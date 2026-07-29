import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean.DynamicalRelations

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean

structure LimitSetClassificationPackage {S : DynamicalSystem} where
  omegaLimitSet : Set S.X
  alphaLimitSet : Set S.X
  limitSetInvariant : omegaLimitSet = Set.image S.F omegaLimitSet
  classification : omegaLimitSet = Set.singleton x → ∃ x, x ∈ omegaLimitSet
  admissible : Prop

structure LimitSetClassificationEvidence {S : DynamicalSystem} (P : LimitSetClassificationPackage S) where
  limitSetInvariantClosed : P.limitSetInvariant
  classificationClosed : P.classification
  admissibleClosed : P.admissible

def LimitSetClassificationClosed {S : DynamicalSystem} (P : LimitSetClassificationPackage S) : Prop :=
  P.limitSetInvariant ∧ P.classification ∧ P.admissible

theorem limit_set_classification_closed_from_evidence {S : DynamicalSystem} (P : LimitSetClassificationPackage S) (E : LimitSetClassificationEvidence P) : LimitSetClassificationClosed P := by
  exact And.intro E.limitSetInvariantClosed (And.intro E.classificationClosed E.admissibleClosed)

end DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean
end HautevilleHouse
