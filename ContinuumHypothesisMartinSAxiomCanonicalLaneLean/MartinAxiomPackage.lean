import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuumHypothesisMartinSAxiomCanonicalLaneLean.ForcingExtension

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomCanonicalLaneLean

structure MartinAxiomPackage where
  kappa : Cardinal
  ccc : Prop
  denseSetCount : Cardinal
  genericFilterExists : Prop

structure MartinAxiomEvidence (M : MartinAxiomPackage) where
  cccClosed : M.ccc
  denseSetCountClosed : M.denseSetCount ≤ Cardinal.continuum
  genericFilterExistsClosed : M.genericFilterExists

def MartinAxiomClosed (M : MartinAxiomPackage) : Prop :=
  M.ccc ∧ M.denseSetCount ≤ Cardinal.continuum ∧ M.genericFilterExists

theorem martin_axiom_closed_from_evidence (M : MartinAxiomPackage) (E : MartinAxiomEvidence M) : MartinAxiomClosed M :=
  And.intro E.cccClosed (And.intro E.denseSetCountClosed E.genericFilterExistsClosed)

end ContinuumHypothesisMartinSAxiomCanonicalLaneLean
end HautevilleHouse