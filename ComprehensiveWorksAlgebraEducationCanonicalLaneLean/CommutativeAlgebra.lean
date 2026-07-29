import ComprehensiveWorksAlgebraEducationCanonicalLaneLean.GaloisTheory

/-!
# Commutative Algebra Package
-/

namespace HautevilleHouse
namespace ComprehensiveWorksAlgebraEducationCanonicalLaneLean

structure CommutativeAlgebraPackage {G : AlgebraicStructurePackage}
    {F : PolynomialEquationsPackage G} {R : RingTheoryPackage G F}
    {M : ModuleTheoryPackage G F R} {Gal : GaloisTheoryPackage G F R M} where
  localRing : Type u
  maximalIdeal : Type v
  residueField : Type w
  localization : Prop
  completion : Prop
  integralClosure : Prop
  dimensionTheory : Prop

structure CommutativeAlgebraEvidence {G : AlgebraicStructurePackage}
    {F : PolynomialEquationsPackage G} {R : RingTheoryPackage G F}
    {M : ModuleTheoryPackage G F R} {Gal : GaloisTheoryPackage G F R M}
    (A : CommutativeAlgebraPackage G F R M Gal) where
  localizationClosed : A.localization
  completionClosed : A.completion
  integralClosureClosed : A.integralClosure
  dimensionTheoryClosed : A.dimensionTheory

def CommutativeAlgebraClosed {G : AlgebraicStructurePackage}
    {F : PolynomialEquationsPackage G} {R : RingTheoryPackage G F}
    {M : ModuleTheoryPackage G F R} {Gal : GaloisTheoryPackage G F R M}
    (A : CommutativeAlgebraPackage G F R M Gal) : Prop :=
  A.localization ∧ A.completion ∧ A.integralClosure ∧ A.dimensionTheory

theorem commutative_algebra_closed_from_evidence
    {G : AlgebraicStructurePackage} {F : PolynomialEquationsPackage G}
    {R : RingTheoryPackage G F} {M : ModuleTheoryPackage G F R}
    {Gal : GaloisTheoryPackage G F R M}
    (A : CommutativeAlgebraPackage G F R M Gal)
    (E : CommutativeAlgebraEvidence A) : CommutativeAlgebraClosed A := by
  exact And.intro E.localizationClosed
    (And.intro E.completionClosed
      (And.intro E.integralClosureClosed E.dimensionTheoryClosed))

end ComprehensiveWorksAlgebraEducationCanonicalLaneLean
end HautevilleHouse
