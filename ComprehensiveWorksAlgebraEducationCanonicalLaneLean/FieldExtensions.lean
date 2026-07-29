import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksAlgebraEducationCanonicalLaneLean

structure FieldExtensionsPackage where
  baseField : Type u
  extensionField : Type v
  inclusion : baseField → extensionField
  degree : Nat
  galoisGroup : Type w
  galoisCorrespondence : Prop

def FieldExtensionsClosed (F : FieldExtensionsPackage) : Prop :=
  F.galoisCorrespondence ∧ F.degree > 1

theorem field_extensions_closed (F : FieldExtensionsPackage) (h : F.galoisCorrespondence) (hd : F.degree > 1) :
    FieldExtensionsClosed F := by
  exact And.intro h hd

end HautevilleHouse
end ComprehensiveWorksAlgebraEducationCanonicalLaneLean