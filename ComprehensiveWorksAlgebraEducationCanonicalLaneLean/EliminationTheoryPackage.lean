import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComprehensiveWorksAlgebraEducation.GrobnerBasisPackage

namespace HautevilleHouse
namespace ComprehensiveWorksAlgebraEducation

structure EliminationTheoryPackage {P : PolynomialAlgebraPackage} {G : GrobnerBasisPackage P} where
  eliminationIdeal : Set P.polynomialRing
  eliminationOrder : Prop
  projectionMapDefined : Prop
  closureUnderProjection : Prop
  eliminationOrderTerm : eliminationOrder
  projectionMapDefinedTerm : projectionMapDefined
  closureUnderProjectionTerm : closureUnderProjection

structure EliminationTheoryEvidence {P : PolynomialAlgebraPackage} {G : GrobnerBasisPackage P} (E : EliminationTheoryPackage G) where
  eliminationOrderClosed : E.eliminationOrder
  projectionMapDefinedClosed : E.projectionMapDefined
  closureUnderProjectionClosed : E.closureUnderProjection

def EliminationTheoryClosed {P : PolynomialAlgebraPackage} {G : GrobnerBasisPackage P} (E : EliminationTheoryPackage G) : Prop :=
  E.eliminationOrder ∧ E.projectionMapDefined ∧ E.closureUnderProjection

theorem elimination_theory_closed_from_evidence {P : PolynomialAlgebraPackage} {G : GrobnerBasisPackage P} (E : EliminationTheoryPackage G) (Ev : EliminationTheoryEvidence E) : EliminationTheoryClosed E := by
  exact And.intro Ev.eliminationOrderClosed (And.intro Ev.projectionMapDefinedClosed Ev.closureUnderProjectionClosed)

end ComprehensiveWorksAlgebraEducation
end HautevilleHouse