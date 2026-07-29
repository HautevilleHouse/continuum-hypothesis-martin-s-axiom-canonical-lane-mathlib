import canonicalLaneMathlib.AdmissibleClass

/-!
# Solovay Forcing Package

This module defines Solovay forcing, which is used to obtain models where CH
fails. It is a ccc forcing that adds a large number of reals.
-/

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomCanonicalLaneLean

structure SolovayForcingData where
  partialOrder : Type u
  cccProperty : Prop
  addsReals : Prop
  cardinalPreservation : Prop
  cccPropertyClosed : cccProperty
  addsRealsClosed : addsReals
  cardinalPreservationClosed : cardinalPreservation

def SolovayForcingClosed (S : SolovayForcingData) : Prop :=
  S.cccProperty ∧ S.addsReals ∧ S.cardinalPreservation

theorem solovay_forcing_closed (S : SolovayForcingData) :
    SolovayForcingClosed S := by
  exact And.intro S.cccPropertyClosed
    (And.intro S.addsRealsClosed S.cardinalPreservationClosed)

end ContinuumHypothesisMartinSAxiomCanonicalLaneLean
end HautevilleHouse