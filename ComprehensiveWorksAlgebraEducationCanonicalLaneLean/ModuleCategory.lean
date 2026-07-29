import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksAlgebraEducationCanonicalLaneLean

structure ModuleCategoryPackage where
  ringR : Type u
  modules : Type v
  morphisms : Type w
  directSumDefined : Prop
  tensorProductDefined : Prop
  exactSequenceProperties : Prop

def ModuleCategoryClosed (M : ModuleCategoryPackage) : Prop :=
  M.directSumDefined ∧ M.tensorProductDefined ∧ M.exactSequenceProperties

theorem module_category_closed (M : ModuleCategoryPackage) (h : M.directSumDefined ∧ M.tensorProductDefined ∧ M.exactSequenceProperties) :
    ModuleCategoryClosed M := h

end HautevilleHouse
end ComprehensiveWorksAlgebraEducationCanonicalLaneLean