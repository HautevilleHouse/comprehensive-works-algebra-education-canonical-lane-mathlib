import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksAlgebraEducationCanonicalLaneLean

def ConstrainedCWAEAlgebraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cwae_algebra_endgame (A : AdmissibleClass) :
    ConstrainedCWAEAlgebraClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComprehensiveWorksAlgebraEducationCanonicalLaneLean
end HautevilleHouse