import ComprehensiveWorksAlgebraEducationCanonicalLaneLean.CommutativeAlgebra

/-!
# Homological Algebra Package
-/

namespace HautevilleHouse
namespace ComprehensiveWorksAlgebraEducationCanonicalLaneLean

structure HomologicalAlgebraPackage {G : AlgebraicStructurePackage}
    {F : PolynomialEquationsPackage G} {R : RingTheoryPackage G F}
    {M : ModuleTheoryPackage G F R} {Gal : GaloisTheoryPackage G F R M}
    {A : CommutativeAlgebraPackage G F R M Gal} where
  chainComplex : Type u
  homology : Type v
  exactSequence : Prop
  derivedFunctor : Prop
  spectralSequence : Prop

structure HomologicalAlgebraEvidence {G : AlgebraicStructurePackage}
    {F : PolynomialEquationsPackage G} {R : RingTheoryPackage G F}
    {M : ModuleTheoryPackage G F R} {Gal : GaloisTheoryPackage G F R M}
    {A : CommutativeAlgebraPackage G F R M Gal}
    (H : HomologicalAlgebraPackage G F R M Gal A) where
  exactSequenceClosed : H.exactSequence
  derivedFunctorClosed : H.derivedFunctor
  spectralSequenceClosed : H.spectralSequence

def HomologicalAlgebraClosed {G : AlgebraicStructurePackage}
    {F : PolynomialEquationsPackage G} {R : RingTheoryPackage G F}
    {M : ModuleTheoryPackage G F R} {Gal : GaloisTheoryPackage G F R M}
    {A : CommutativeAlgebraPackage G F R M Gal}
    (H : HomologicalAlgebraPackage G F R M Gal A) : Prop :=
  H.exactSequence ∧ H.derivedFunctor ∧ H.spectralSequence

theorem homological_algebra_closed_from_evidence
    {G : AlgebraicStructurePackage} {F : PolynomialEquationsPackage G}
    {R : RingTheoryPackage G F} {M : ModuleTheoryPackage G F R}
    {Gal : GaloisTheoryPackage G F R M} {A : CommutativeAlgebraPackage G F R M Gal}
    (H : HomologicalAlgebraPackage G F R M Gal A)
    (E : HomologicalAlgebraEvidence H) : HomologicalAlgebraClosed H := by
  exact And.intro E.exactSequenceClosed
    (And.intro E.derivedFunctorClosed E.spectralSequenceClosed)

end ComprehensiveWorksAlgebraEducationCanonicalLaneLean
end HautevilleHouse
