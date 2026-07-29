import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomCanonicalLaneLean

structure GenericFilter (M : Type u) [PartialOrder M] where
  carrier : Set M
  upwardClosed : ∀ {p q : M}, p ∈ carrier → p ≤ q → q ∈ carrier
  pairwiseCompatible : ∀ {p q : M}, p ∈ carrier → q ∈ carrier → ∃ r : M, r ∈ carrier ∧ p ≤ r ∧ q ≤ r

structure DenseSet (M : Type u) [PartialOrder M] (D : Set M) where
  dense : ∀ p : M, ∃ q : M, q ∈ D ∧ p ≤ q

def FiltersAdmissibleClass (M : Type u) [PartialOrder M] : AdmissibleClass where
  object := (M, inferInstance)
  endpointSatisfied := True
  remainderRecorded := True
  gateWitness := Or.inl True.intro

end ContinuumHypothesisMartinSAxiomCanonicalLaneLean
end HautevilleHouse