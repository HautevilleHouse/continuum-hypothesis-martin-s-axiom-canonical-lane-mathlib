import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuumHypothesisMartinSAxiomCanonicalLaneLean.CardinalInvariants

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomCanonicalLaneLean

structure SouslinTree where
  tree : Type u
  order : PartialOrder tree
  height : Ordinal
  uncountableAntichain : Prop

structure SouslinTreeEvidence (T : SouslinTree) where
  heightOmegaOne : T.height = Ordinal.omega1
  antichainClosed : T.uncountableAntichain

def SouslinTreeClosed (T : SouslinTree) : Prop :=
  T.height = Ordinal.omega1 ∧ T.uncountableAntichain

theorem souslin_tree_closed_from_evidence (T : SouslinTree) (E : SouslinTreeEvidence T) : SouslinTreeClosed T :=
  And.intro E.heightOmegaOne E.antichainClosed

end ContinuumHypothesisMartinSAxiomCanonicalLaneLean
end HautevilleHouse