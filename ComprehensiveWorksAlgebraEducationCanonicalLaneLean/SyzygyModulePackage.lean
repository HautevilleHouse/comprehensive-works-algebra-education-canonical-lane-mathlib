import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComprehensiveWorksAlgebraEducation.GrobnerBasisPackage

namespace HautevilleHouse
namespace ComprehensiveWorksAlgebraEducation

structure SyzygyModulePackage {P : PolynomialAlgebraPackage} {G : GrobnerBasisPackage P} where
  syzygyModule : Type u
  freeResolution : Type v
  syzygyBasis : List (List P.polynomialRing)
  resolutionExactness : Prop
  syzygyBasisTerm : syzygyBasis
  resolutionExactnessTerm : resolutionExactness

structure SyzygyModuleEvidence {P : PolynomialAlgebraPackage} {G : GrobnerBasisPackage P} (S : SyzygyModulePackage G) where
  syzygyBasisClosed : S.syzygyBasis = S.syzygyBasis
  resolutionExactnessClosed : S.resolutionExactness

def SyzygyModuleClosed {P : PolynomialAlgebraPackage} {G : GrobnerBasisPackage P} (S : SyzygyModulePackage G) : Prop :=
  S.resolutionExactness

theorem syzygy_module_closed_from_evidence {P : PolynomialAlgebraPackage} {G : GrobnerBasisPackage P} (S : SyzygyModulePackage G) (E : SyzygyModuleEvidence S) : SyzygyModuleClosed S := by
  exact E.resolutionExactnessClosed

end ComprehensiveWorksAlgebraEducation
end HautevilleHouse