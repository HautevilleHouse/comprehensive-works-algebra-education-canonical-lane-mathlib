import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksAlgebraEducation

structure WorkedExamplePackage where
  problem : String
  solution : String
  steps : List String
  stepCount : Nat
  allStepsPresent : Prop

structure WorkedExampleEvidence (W : WorkedExamplePackage) where
  problemNonempty : W.problem ≠ ""
  solutionNonempty : W.solution ≠ ""
  stepsNonempty : W.steps ≠ []
  stepCountCorrect : W.steps.length = W.stepCount
  allStepsPresentClosed : W.allStepsPresent

def WorkedExampleClosed (W : WorkedExamplePackage) : Prop :=
  W.problem ≠ "" ∧ W.solution ≠ "" ∧ W.steps ≠ [] ∧ W.steps.length = W.stepCount ∧ W.allStepsPresent

theorem worked_example_closed_from_evidence (W : WorkedExamplePackage)
    (E : WorkedExampleEvidence W) : WorkedExampleClosed W := by
  exact And.intro E.problemNonempty (And.intro E.solutionNonempty
    (And.intro E.stepsNonempty (And.intro E.stepCountCorrect E.allStepsPresentClosed)))

end ComprehensiveWorksAlgebraEducation
end HautevilleHouse