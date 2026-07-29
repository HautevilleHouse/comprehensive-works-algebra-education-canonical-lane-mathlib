import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksAlgebraEducationCanonicalLaneLean

structure AdmissibleClass where
  object : CWAEAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CWAEWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComprehensiveWorksAlgebraEducationCanonicalLaneLean
end HautevilleHouse