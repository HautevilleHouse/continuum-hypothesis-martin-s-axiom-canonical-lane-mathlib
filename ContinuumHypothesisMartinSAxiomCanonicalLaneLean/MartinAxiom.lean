import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomCanonicalLaneLean

structure MartinAxiomPackage where
  cccForcing : Type u
  kappaCardinal : Cardinal
  maKappaHolds : Prop
  antichainCondition : Prop
  genericFilterExists : Prop

structure MartinAxiomEvidence (M : MartinAxiomPackage) where
  cccForcingClosed : M.cccForcing = Type u
  maKappaHoldsClosed : M.maKappaHolds
  antichainConditionClosed : M.antichainCondition
  genericFilterExistsClosed : M.genericFilterExists

def MartinAxiomClosed (M : MartinAxiomPackage) : Prop :=
  M.maKappaHolds ∧ M.antichainCondition ∧ M.genericFilterExists

theorem martin_axiom_closed_from_evidence (M : MartinAxiomPackage) (E : MartinAxiomEvidence M) :
    MartinAxiomClosed M := by
  exact And.intro E.maKappaHoldsClosed
    (And.intro E.antichainConditionClosed E.genericFilterExistsClosed)

end ContinuumHypothesisMartinSAxiomCanonicalLaneLean
end HautevilleHouse