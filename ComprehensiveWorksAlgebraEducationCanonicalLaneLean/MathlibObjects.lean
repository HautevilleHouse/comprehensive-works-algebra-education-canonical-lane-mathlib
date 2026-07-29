import ComprehensiveWorksAlgebraEducationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ComprehensiveWorksAlgebraEducationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AlgebraSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AlgebraAdmittedObject where
  space : AlgebraSpace
  closedManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure AlgebraEndgameState where
  object : AlgebraAdmittedObject

def AlgebraWitnessClosed (O : AlgebraAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end ComprehensiveWorksAlgebraEducationCanonicalLaneLean
end HautevilleHouse