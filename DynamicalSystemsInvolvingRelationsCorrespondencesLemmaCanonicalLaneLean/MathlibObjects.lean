import DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean.CorrespondencesPackage
import Mathlib.Dynamics.Flow

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean

structure DynamicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicalAdmittedObject where
  space : DynamicalSpace
  dynamicalSystem : Type
  flow : dynamicalSystem → space.carrier → space.carrier
  correspondenceSatisfied : Prop
  conclusion : correspondenceSatisfied

def DynamicalWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.correspondenceSatisfied

end DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean
end HautevilleHouse