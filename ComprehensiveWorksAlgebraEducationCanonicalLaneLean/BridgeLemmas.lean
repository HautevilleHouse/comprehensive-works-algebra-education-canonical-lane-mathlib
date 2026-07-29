import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksAlgebraEducationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CWAEWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ComprehensiveWorksAlgebraEducationCanonicalLaneLean
end HautevilleHouse