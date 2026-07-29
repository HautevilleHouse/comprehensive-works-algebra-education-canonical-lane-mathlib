import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksAlgebraEducation

structure PolynomialAlgebraPackage where
  polynomialRing : Type u
  variableSet : Type v
  degreeFunction : polynomialRing → ℕ
  additionClosed : ∀ f g : polynomialRing, degreeFunction (f + g) ≤ max (degreeFunction f) (degreeFunction g)
  multiplicationClosed : ∀ f g : polynomialRing, degreeFunction (f * g) = degreeFunction f + degreeFunction g

structure PolynomialAlgebraEvidence (P : PolynomialAlgebraPackage) where
  additionClosedTerm : P.additionClosed
  multiplicationClosedTerm : P.multiplicationClosed

def PolynomialAlgebraClosed (P : PolynomialAlgebraPackage) : Prop :=
  (∀ f g : P.polynomialRing, P.degreeFunction (f + g) ≤ max (P.degreeFunction f) (P.degreeFunction g)) ∧
  (∀ f g : P.polynomialRing, P.degreeFunction (f * g) = P.degreeFunction f + P.degreeFunction g)

theorem polynomial_algebra_closed_from_evidence (P : PolynomialAlgebraPackage) (E : PolynomialAlgebraEvidence P) : PolynomialAlgebraClosed P := by
  exact And.intro E.additionClosedTerm E.multiplicationClosedTerm

end ComprehensiveWorksAlgebraEducation
end HautevilleHouse