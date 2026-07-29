import ComprehensiveWorksAlgebraEducationCanonicalLaneLean.AlgebraicStructure

/-!
# Polynomial Equations Package
-/

namespace HautevilleHouse
namespace ComprehensiveWorksAlgebraEducationCanonicalLaneLean

structure PolynomialEquationsPackage {G : AlgebraicStructurePackage} where
  polynomialRing : Type u
  variable : Type v
  equationSet : List (polynomialRing)
  rootSet : Set (G.carrier)
  solutionCondition : Prop

structure PolynomialEquationsEvidence {G : AlgebraicStructurePackage}
    (F : PolynomialEquationsPackage G) where
  solutionConditionClosed : F.solutionCondition

def PolynomialEquationsClosed {G : AlgebraicStructurePackage}
    (F : PolynomialEquationsPackage G) : Prop :=
  F.solutionCondition

theorem polynomial_equations_closed_from_evidence
    {G : AlgebraicStructurePackage} (F : PolynomialEquationsPackage G)
    (E : PolynomialEquationsEvidence F) : PolynomialEquationsClosed F := by
  exact E.solutionConditionClosed

end ComprehensiveWorksAlgebraEducationCanonicalLaneLean
end HautevilleHouse
