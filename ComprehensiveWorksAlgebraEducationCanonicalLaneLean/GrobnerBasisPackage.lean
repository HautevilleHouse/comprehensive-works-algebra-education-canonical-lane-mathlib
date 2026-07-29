import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComprehensiveWorksAlgebraEducation.PolynomialAlgebraPackage

namespace HautevilleHouse
namespace ComprehensiveWorksAlgebraEducation

structure GrobnerBasisPackage {P : PolynomialAlgebraPackage} where
  ideal : Set P.polynomialRing
  basis : List P.polynomialRing
  buchbergerCriterion : Prop
  spolynomialReduction : Prop
  spolynomialReductionTerm : spolynomialReduction
  buchbergerCriterionTerm : buchbergerCriterion

structure GrobnerBasisEvidence {P : PolynomialAlgebraPackage} (G : GrobnerBasisPackage P) where
  spolynomialReductionClosed : G.spolynomialReduction
  buchbergerCriterionClosed : G.buchbergerCriterion

def GrobnerBasisClosed {P : PolynomialAlgebraPackage} (G : GrobnerBasisPackage P) : Prop :=
  G.spolynomialReduction ∧ G.buchbergerCriterion

theorem grobner_basis_closed_from_evidence {P : PolynomialAlgebraPackage} (G : GrobnerBasisPackage P) (E : GrobnerBasisEvidence G) : GrobnerBasisClosed G := by
  exact And.intro E.spolynomialReductionClosed E.buchbergerCriterionClosed

end ComprehensiveWorksAlgebraEducation
end HautevilleHouse