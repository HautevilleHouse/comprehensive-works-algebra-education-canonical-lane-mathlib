import ComprehensiveWorksAlgebraEducationCanonicalLaneLean.MathlibObjects

/-!
# Algebraic Structure Package
-/

namespace HautevilleHouse
namespace ComprehensiveWorksAlgebraEducationCanonicalLaneLean

structure AlgebraicStructurePackage where
  carrier : Type u
  binaryOperation : carrier → carrier → carrier
  identityElement : carrier
  associativity : ∀ a b c : carrier, binaryOperation (binaryOperation a b) c = binaryOperation a (binaryOperation b c)
  identityLeft : ∀ a : carrier, binaryOperation identityElement a = a
  identityRight : ∀ a : carrier, binaryOperation a identityElement = a

structure AlgebraicStructureEvidence (G : AlgebraicStructurePackage) where
  associativityClosed : G.associativity
  identityLeftClosed : G.identityLeft
  identityRightClosed : G.identityRight

def AlgebraicStructureClosed (G : AlgebraicStructurePackage) : Prop :=
  G.associativity ∧ G.identityLeft ∧ G.identityRight

theorem algebraic_structure_closed_from_evidence
    (G : AlgebraicStructurePackage) (E : AlgebraicStructureEvidence G) :
    AlgebraicStructureClosed G := by
  exact And.intro E.associativityClosed (And.intro E.identityLeftClosed E.identityRightClosed)

end ComprehensiveWorksAlgebraEducationCanonicalLaneLean
end HautevilleHouse
