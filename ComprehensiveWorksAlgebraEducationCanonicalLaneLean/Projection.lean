import ComprehensiveWorksAlgebraEducationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksAlgebraEducationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def algebraProjection : Projection AlgebraEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem algebra_projection_idempotent (x : AlgebraEndgameState) :
    algebraProjection.toFun (algebraProjection.toFun x) = algebraProjection.toFun x := by
  exact algebraProjection.idempotent x

end ComprehensiveWorksAlgebraEducationCanonicalLaneLean
end HautevilleHouse