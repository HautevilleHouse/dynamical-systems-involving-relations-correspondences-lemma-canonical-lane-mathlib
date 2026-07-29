import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean

structure RelationCorrespondencePackage (M : Type u) [TopologicalSpace M] where
  relation : Set (M × M)
  correspondence : Set (M × M)
  topologicalCondition : Prop
alien
-- FIX: too alien
end DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean
end HautevilleHouse