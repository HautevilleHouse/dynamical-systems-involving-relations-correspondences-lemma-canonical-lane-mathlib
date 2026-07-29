import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemma

structure SetValuedDynamicsPackage where
  baseSpace : Type u
  setValuedMap : baseSpace → Set (baseSpace)
  closednessCondition : Prop
  iterationStability : Prop
  admissibleMapping : Prop
  gateWitness : closednessCondition ∨ iterationStability

def SetValuedDynamicsClosed (S : SetValuedDynamicsPackage) : Prop :=
  S.closednessCondition ∧ S.iterationStability ∧ S.admissibleMapping

end DynamicalSystemsInvolvingRelationsCorrespondencesLemma
end HautevilleHouse
