import ComprehensiveWorksAlgebraEducationCanonicalLaneLean.PolynomialEquations

/-!
# Ring Theory Package
-/

namespace HautevilleHouse
namespace ComprehensiveWorksAlgebraEducationCanonicalLaneLean

structure RingTheoryPackage {G : AlgebraicStructurePackage}
    {F : PolynomialEquationsPackage G} where
  ringCarrier : Type u
  addition : ringCarrier → ringCarrier → ringCarrier
  multiplication : ringCarrier → ringCarrier → ringCarrier
  additiveIdentity : ringCarrier
  additiveInverse : ringCarrier → ringCarrier
  additiveAssociativity : Prop
  additiveCommutativity : Prop
  multiplicativeAssociativity : Prop
  distributivity : Prop
  ringAxioms : Prop

structure RingTheoryEvidence {G : AlgebraicStructurePackage}
    {F : PolynomialEquationsPackage G} (R : RingTheoryPackage G F) where
  additiveAssociativityClosed : R.additiveAssociativity
  additiveCommutativityClosed : R.additiveCommutativity
  multiplicativeAssociativityClosed : R.multiplicativeAssociativity
  distributivityClosed : R.distributivity
  ringAxiomsClosed : R.ringAxioms

def RingTheoryClosed {G : AlgebraicStructurePackage}
    {F : PolynomialEquationsPackage G} (R : RingTheoryPackage G F) : Prop :=
  R.additiveAssociativity ∧ R.additiveCommutativity ∧
  R.multiplicativeAssociativity ∧ R.distributivity ∧ R.ringAxioms

theorem ring_theory_closed_from_evidence
    {G : AlgebraicStructurePackage} {F : PolynomialEquationsPackage G}
    (R : RingTheoryPackage G F) (E : RingTheoryEvidence R) :
    RingTheoryClosed R := by
  exact And.intro E.additiveAssociativityClosed
    (And.intro E.additiveCommutativityClosed
      (And.intro E.multiplicativeAssociativityClosed
        (And.intro E.distributivityClosed E.ringAxiomsClosed)))

end ComprehensiveWorksAlgebraEducationCanonicalLaneLean
end HautevilleHouse
