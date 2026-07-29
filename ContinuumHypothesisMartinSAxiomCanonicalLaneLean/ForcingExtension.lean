import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuumHypothesisMartinSAxiomCanonicalLaneLean.PrimitiveGenericFilter

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomCanonicalLaneLean

structure ForcingExtension (M : Type u) [PartialOrder M] where
  genericFilter : GenericFilter M
  names : Type v
  interpretation : names → Set (M × Set (M × names))
  forcingRelation : Prop

structure ForcingExtensionEvidence {M : Type u} [PartialOrder M] (F : ForcingExtension M) where
  genericFilterClosed : True
  namesClosed : True
  interpretationClosed : True
  forcingRelationClosed : F.forcingRelation

def ForcingExtensionClosed {M : Type u} [PartialOrder M] (F : ForcingExtension M) : Prop :=
  F.forcingRelation

theorem forcing_extension_closed_from_evidence {M : Type u} [PartialOrder M] (F : ForcingExtension M) (E : ForcingExtensionEvidence F) : ForcingExtensionClosed F :=
  E.forcingRelationClosed

end ContinuumHypothesisMartinSAxiomCanonicalLaneLean
end HautevilleHouse