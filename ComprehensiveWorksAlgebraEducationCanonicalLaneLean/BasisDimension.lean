import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksAlgebraEducationCanonicalLaneLean

structure BasisDimensionPackage where
  vectorSpace : Type u
  fieldF : Type v
  basis : Set (vectorSpace)
  dimension : Nat
  linearIndependence : Prop
  spanning : Prop
  dimensionUnique : Prop

def BasisDimensionClosed (B : BasisDimensionPackage) : Prop :=
  B.linearIndependence ∧ B.spanning ∧ B.dimensionUnique

theorem basis_dimension_closed (B : BasisDimensionPackage) (h : B.linearIndependence ∧ B.spanning ∧ B.dimensionUnique) :
    BasisDimensionClosed B := h

end HautevilleHouse
end ComprehensiveWorksAlgebraEducationCanonicalLaneLean