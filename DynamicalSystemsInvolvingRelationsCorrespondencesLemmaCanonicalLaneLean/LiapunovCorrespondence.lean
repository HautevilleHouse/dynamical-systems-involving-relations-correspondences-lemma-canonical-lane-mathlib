import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemma

structure LiapunovCorrespondencePackage where
  stateSpace : Type u
  correspondence : stateSpace → Set (stateSpace)
  liapunovFunction : stateSpace → ℝ
  nonincreasingCondition : Prop
  stabilityGuaranteed : Prop
  admissibleLiapunov : Prop
  bridgeWitness : admissibleLiapunov

def LiapunovCorrespondenceClosed (L : LiapunovCorrespondencePackage) : Prop :=
  L.nonincreasingCondition ∧ L.stabilityGuaranteed ∧ L.admissibleLiapunov

end DynamicalSystemsInvolvingRelationsCorrespondencesLemma
end HautevilleHouse
