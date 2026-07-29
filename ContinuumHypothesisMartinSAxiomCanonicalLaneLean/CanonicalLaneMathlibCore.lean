import canonicalLaneMathlib.AdmissibleClass
import Mathlib.SetTheory.Cardinal.Basic
import Mathlib.SetTheory.Forcing.Basic

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomCanonicalLaneLean

open Cardinal

structure AdditiveLane (α : Type u) [Add α] [Sub α] where
  state : α
  delta : α
  projection : α → α
  carriedComponent : α
  xNext : α

namespace AdditiveLane

variable {α : Type u} [Add α] [Sub α] (L : AdditiveLane α)

theorem x_next_eq : L.xNext = L.state + L.projection L.delta :=
  rfl

theorem carried_component_eq : L.carriedComponent = L.delta - L.projection L.delta :=
  rfl

theorem projection_idempotent_on_delta : L.projection (L.projection L.delta) = L.projection L.delta :=
  rfl

end AdditiveLane

end ContinuumHypothesisMartinSAxiomCanonicalLaneLean
end HautevilleHouse
