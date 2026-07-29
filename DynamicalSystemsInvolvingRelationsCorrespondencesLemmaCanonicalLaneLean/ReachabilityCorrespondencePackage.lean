import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemma

structure ReachabilityCorrespondencePackage where
  stateSpace : Type u
  relation : stateSpace → stateSpace → Prop
  reachabilityClosure : Prop
  admissibleCorrespondence : Prop
  bridgeWitness : admissibleCorrespondence

def ReachabilityCorrespondenceClosed (R : ReachabilityCorrespondencePackage) : Prop :=
  R.reachabilityClosure ∧ R.admissibleCorrespondence

end DynamicalSystemsInvolvingRelationsCorrespondencesLemma
end HautevilleHouse
