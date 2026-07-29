import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksAlgebraEducationCanonicalLaneLean

structure GroupRepresentationsPackage where
  groupG : Type u
  fieldF : Type v
  representation : groupG → (F → F)
  dimension : Nat
  irreducible : Prop
  characterFormula : groupG → F

def GroupRepresentationsClosed (G : GroupRepresentationsPackage) : Prop :=
  G.irreducible ∧ G.dimension > 0

theorem group_representations_closed (G : GroupRepresentationsPackage) (h : G.irreducible) (hdim : G.dimension > 0) :
    GroupRepresentationsClosed G := by
  exact And.intro h hdim

end HautevilleHouse
end ComprehensiveWorksAlgebraEducationCanonicalLaneLean