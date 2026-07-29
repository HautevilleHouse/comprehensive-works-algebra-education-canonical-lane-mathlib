import ComprehensiveWorksAlgebraEducationCanonicalLaneLean.RingTheory

/-!
# Module Theory Package
-/

namespace HautevilleHouse
namespace ComprehensiveWorksAlgebraEducationCanonicalLaneLean

structure ModuleTheoryPackage {G : AlgebraicStructurePackage}
    {F : PolynomialEquationsPackage G} {R : RingTheoryPackage G F} where
  moduleCarrier : Type u
  scalarMultiplication : G.carrier → moduleCarrier → moduleCarrier
  vectorAddition : moduleCarrier → moduleCarrier → moduleCarrier
  additiveGroup : Prop
  distributivityScalarVector : Prop
  distributivityScalarScalar : Prop
  associativityScalar : Prop
  identityScalar : Prop
  moduleAxioms : Prop

structure ModuleTheoryEvidence {G : AlgebraicStructurePackage}
    {F : PolynomialEquationsPackage G} {R : RingTheoryPackage G F}
    (M : ModuleTheoryPackage G F R) where
  additiveGroupClosed : M.additiveGroup
  distributivityScalarVectorClosed : M.distributivityScalarVector
  distributivityScalarScalarClosed : M.distributivityScalarScalar
  associativityScalarClosed : M.associativityScalar
  identityScalarClosed : M.identityScalar
  moduleAxiomsClosed : M.moduleAxioms

def ModuleTheoryClosed {G : AlgebraicStructurePackage}
    {F : PolynomialEquationsPackage G} {R : RingTheoryPackage G F}
    (M : ModuleTheoryPackage G F R) : Prop :=
  M.additiveGroup ∧ M.distributivityScalarVector ∧
  M.distributivityScalarScalar ∧ M.associativityScalar ∧
  M.identityScalar ∧ M.moduleAxioms

theorem module_theory_closed_from_evidence
    {G : AlgebraicStructurePackage} {F : PolynomialEquationsPackage G}
    {R : RingTheoryPackage G F} (M : ModuleTheoryPackage G F R)
    (E : ModuleTheoryEvidence M) : ModuleTheoryClosed M := by
  exact And.intro E.additiveGroupClosed
    (And.intro E.distributivityScalarVectorClosed
      (And.intro E.distributivityScalarScalarClosed
        (And.intro E.associativityScalarClosed
          (And.intro E.identityScalarClosed E.moduleAxiomsClosed))))

end ComprehensiveWorksAlgebraEducationCanonicalLaneLean
end HautevilleHouse
