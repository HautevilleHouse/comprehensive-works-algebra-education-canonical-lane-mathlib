import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksAlgebraEducation

structure AlgebraicStructurePackage where
  domain : Type u
  operations : List (Type u → Type u)
  equations : List Proposition
  signatureConsistent : Prop

structure AlgebraicStructureEvidence (A : AlgebraicStructurePackage) where
  domainNonempty : Nonempty A.domain
  operationsClosed : A.operations ≠ []
  equationsClosed : A.equations ≠ []
  signatureConsistentClosed : A.signatureConsistent

def AlgebraicStructureClosed (A : AlgebraicStructurePackage) : Prop :=
  Nonempty A.domain ∧ A.operations ≠ [] ∧ A.equations ≠ [] ∧ A.signatureConsistent

theorem algebraic_structure_closed_from_evidence (A : AlgebraicStructurePackage)
    (E : AlgebraicStructureEvidence A) : AlgebraicStructureClosed A := by
  exact And.intro E.domainNonempty (And.intro E.operationsClosed
    (And.intro E.equationsClosed E.signatureConsistentClosed))

end ComprehensiveWorksAlgebraEducation
end HautevilleHouse