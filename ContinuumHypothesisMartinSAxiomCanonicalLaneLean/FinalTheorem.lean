import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomCanonicalLaneLean

def ConstrainedCHClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ch_endgame (A : AdmissibleClass) :
    ConstrainedCHClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuumHypothesisMartinSAxiomCanonicalLaneLean
end HautevilleHouse