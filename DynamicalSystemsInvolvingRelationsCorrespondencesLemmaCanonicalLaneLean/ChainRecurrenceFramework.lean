import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean

structure ChainRecurrencePackage (M : Type u) [TopologicalSpace M] (f : M → M) where
  chainRecurrentSet : Set M
  chainRecurrenceRelation : Set (M × M)
  recurrenceProperty : Prop

structure ChainRecurrenceEvidence (M : Type u) [TopologicalSpace M] (f : M → M) (C : ChainRecurrencePackage M f) where
  recurrencePropertyClosed : C.recurrenceProperty

def ChainRecurrenceClosed (M : Type u) [TopologicalSpace M] (f : M → M) (C : ChainRecurrencePackage M f) : Prop :=
  C.recurrenceProperty

theorem chain_recurrence_closed_from_evidence (M : Type u) [TopologicalSpace M] (f : M → M) (C : ChainRecurrencePackage M f)
    (E : ChainRecurrenceEvidence M f C) : ChainRecurrenceClosed M f C := by
  exact E.recurrencePropertyClosed

end DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean
end HautevilleHouse