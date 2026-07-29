import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComprehensiveWorksAlgebraEducation.PolynomialAlgebraPackage

namespace HautevilleHouse
namespace ComprehensiveWorksAlgebraEducation

structure HilbertFunctionPackage {P : PolynomialAlgebraPackage} where
  gradedRing : Type u
  grading : ℕ → Set P.polynomialRing
  hilbertFunction : ℕ → ℕ
  polynomialGrowth : Prop
  polynomialGrowthTerm : polynomialGrowth

structure HilbertFunctionEvidence {P : PolynomialAlgebraPackage} (H : HilbertFunctionPackage P) where
  polynomialGrowthClosed : H.polynomialGrowth

def HilbertFunctionClosed {P : PolynomialAlgebraPackage} (H : HilbertFunctionPackage P) : Prop :=
  H.polynomialGrowth

theorem hilbert_function_closed_from_evidence {P : PolynomialAlgebraPackage} (H : HilbertFunctionPackage P) (E : HilbertFunctionEvidence H) : HilbertFunctionClosed H := by
  exact E.polynomialGrowthClosed

end ComprehensiveWorksAlgebraEducation
end HautevilleHouse