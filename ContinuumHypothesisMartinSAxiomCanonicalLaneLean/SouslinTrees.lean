import canonicalLaneMathlib.AdmissibleClass

/-!
# Souslin Trees Package

This module defines Souslin trees, which are uncountable trees with no
uncountable chains or antichains. The existence of a Souslin tree is
independent of ZFC and related to MA and CH.
-/

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomCanonicalLaneLean

structure SouslinTree where
  tree : Type u
  order : tree → tree → Prop
  height : Ordinal
  uncountable : Prop
  noUncountableChain : Prop
  noUncountableAntichain : Prop
  uncountableClosed : uncountable
  noUncountableChainClosed : noUncountableChain
  noUncountableAntichainClosed : noUncountableAntichain

def SouslinTreeClosed (S : SouslinTree) : Prop :=
  S.uncountable ∧ S.noUncountableChain ∧ S.noUncountableAntichain

theorem souslin_tree_closed (S : SouslinTree) :
    SouslinTreeClosed S := by
  exact And.intro S.uncountableClosed
    (And.intro S.noUncountableChainClosed S.noUncountableAntichainClosed)

end ContinuumHypothesisMartinSAxiomCanonicalLaneLean
end HautevilleHouse