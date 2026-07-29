import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuumHypothesisMartinSAxiomCanonicalLaneLean.ZFCSetTheory

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomCanonicalLaneLean

structure PartialOrder where
  carrier : Type u
  le : carrier → carrier → Prop
  refl : ∀ x : carrier, le x x
  trans : ∀ x y z : carrier, le x y → le y z → le x z
  antisymm : ∀ x y : carrier, le x y → le y x → x = y

structure ForcingNotion (Z : ZFCSetTheory) where
  poset : PartialOrder
  dense : Set (poset.carrier) → Prop
  genericFilter : Set (poset.carrier) → Prop
  names : Type v

def conditionCompatibility {P : PartialOrder} (p q : P.carrier) : Prop :=
  ∃ r : P.carrier, P.le r p ∧ P.le r q

theorem forcing_notion_dense_compatibility (P : PartialOrder) (p : P.carrier) (D : Set P.carrier) (hD : dense D) :
  ∃ q : P.carrier, q ∈ D ∧ P.le q p := by
  sorry

end ContinuumHypothesisMartinSAxiomCanonicalLaneLean
end HautevilleHouse
