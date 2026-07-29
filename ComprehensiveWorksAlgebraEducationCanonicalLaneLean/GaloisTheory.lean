import ComprehensiveWorksAlgebraEducationCanonicalLaneLean.ModuleTheory

/-!
# Galois Theory Package
-/

namespace HautevilleHouse
namespace ComprehensiveWorksAlgebraEducationCanonicalLaneLean

structure GaloisTheoryPackage {G : AlgebraicStructurePackage}
    {F : PolynomialEquationsPackage G} {R : RingTheoryPackage G F}
    {M : ModuleTheoryPackage G F R} where
  fieldExtension : Type u
  baseField : G.carrier
  extensionDegree : Nat
  galoisGroup : Type v
  fixedField : Type w
  fundamentalTheorem : Prop
  solvability : Prop

structure GaloisTheoryEvidence {G : AlgebraicStructurePackage}
    {F : PolynomialEquationsPackage G} {R : RingTheoryPackage G F}
    {M : ModuleTheoryPackage G F R}
    (Gal : GaloisTheoryPackage G F R M) where
  fundamentalTheoremClosed : Gal.fundamentalTheorem
  solvabilityClosed : Gal.solvability

def GaloisTheoryClosed {G : AlgebraicStructurePackage}
    {F : PolynomialEquationsPackage G} {R : RingTheoryPackage G F}
    {M : ModuleTheoryPackage G F R}
    (Gal : GaloisTheoryPackage G F R M) : Prop :=
  Gal.fundamentalTheorem ∧ Gal.solvability

theorem galois_theory_closed_from_evidence
    {G : AlgebraicStructurePackage} {F : PolynomialEquationsPackage G}
    {R : RingTheoryPackage G F} {M : ModuleTheoryPackage G F R}
    (Gal : GaloisTheoryPackage G F R M)
    (E : GaloisTheoryEvidence Gal) : GaloisTheoryClosed Gal := by
  exact And.intro E.fundamentalTheoremClosed E.solvabilityClosed

end ComprehensiveWorksAlgebraEducationCanonicalLaneLean
end HautevilleHouse
