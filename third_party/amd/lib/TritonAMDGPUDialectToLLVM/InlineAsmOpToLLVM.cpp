#include "Dialect/TritonAMDGPU/IR/Dialect.h"
#include "mlir/Conversion/LLVMCommon/Pattern.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "third_party/amd/include/TritonAMDGPUToLLVM/PatternTritonAMDGPUToLLVM.h"

using namespace mlir;
using namespace mlir::triton;

namespace {

static unsigned countOutputConstraints(StringRef constraints) {
  unsigned count = 0;
  SmallVector<StringRef> parts;
  constraints.split(parts, ',');
  for (auto &p : parts) {
    StringRef trimmed = p.trim();
    if (trimmed.starts_with("="))
      count++;
  }
  return count;
}

struct InlineAsmOpConversion
    : public ConvertOpToLLVMPattern<amdgpu::InlineAsmOp> {
  using ConvertOpToLLVMPattern::ConvertOpToLLVMPattern;

  LogicalResult
  matchAndRewrite(amdgpu::InlineAsmOp op, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override {
    Location loc = op->getLoc();

    SmallVector<Value> operands(adaptor.getArgs());

    SmallVector<Type> retTypes;
    for (auto result : op.getResults()) {
      retTypes.push_back(getTypeConverter()->convertType(result.getType()));
    }

    unsigned numOutputConstraints =
        countOutputConstraints(op.getConstraints());
    bool isBlockReturn =
        numOutputConstraints == 1 && retTypes.size() > 1;

    SmallVector<Type> asmRetTypes;
    if (isBlockReturn) {
      auto vecTy = VectorType::get(
          {static_cast<int64_t>(retTypes.size())}, retTypes[0]);
      asmRetTypes.push_back(vecTy);
    } else {
      asmRetTypes = retTypes;
    }

    Type asmRetType;
    if (asmRetTypes.empty()) {
      asmRetType = LLVM::LLVMVoidType::get(rewriter.getContext());
    } else if (asmRetTypes.size() == 1) {
      asmRetType = asmRetTypes[0];
    } else {
      asmRetType = LLVM::LLVMStructType::getLiteral(rewriter.getContext(),
                                                     asmRetTypes);
    }

    auto asmOp = LLVM::InlineAsmOp::create(
        rewriter, loc, asmRetType,
        /*operands=*/operands,
        /*asm_string=*/op.getAsmString(),
        /*constraints=*/op.getConstraints(),
        /*has_side_effects=*/!op.getPure(),
        /*is_align_stack=*/false, LLVM::TailCallKind::None,
        /*asm_dialect=*/
        LLVM::AsmDialectAttr::get(rewriter.getContext(),
                                  LLVM::AsmDialect::AD_ATT),
        /*operand_attrs=*/ArrayAttr());

    if (retTypes.empty()) {
      rewriter.eraseOp(op);
    } else if (isBlockReturn) {
      SmallVector<Value> results;
      Value vec = asmOp->getResult(0);
      auto i32Ty = IntegerType::get(rewriter.getContext(), 32);
      for (unsigned i = 0; i < retTypes.size(); i++) {
        Value idx = LLVM::ConstantOp::create(
            rewriter, loc, i32Ty,
            rewriter.getI32IntegerAttr(i));
        results.push_back(LLVM::ExtractElementOp::create(
            rewriter, loc, vec, idx));
      }
      rewriter.replaceOp(op, results);
    } else if (retTypes.size() == 1) {
      rewriter.replaceOp(op, asmOp->getResult(0));
    } else {
      SmallVector<Value> results;
      for (unsigned i = 0; i < retTypes.size(); i++) {
        results.push_back(LLVM::ExtractValueOp::create(
            rewriter, loc, asmOp->getResult(0), i));
      }
      rewriter.replaceOp(op, results);
    }

    return success();
  }
};

} // namespace

namespace mlir::triton::AMD {
void populateInlineAsmOpToLLVMPatterns(LLVMTypeConverter &typeConverter,
                                       RewritePatternSet &patterns,
                                       PatternBenefit benefit) {
  patterns.add<InlineAsmOpConversion>(typeConverter, benefit);
}
} // namespace mlir::triton::AMD
