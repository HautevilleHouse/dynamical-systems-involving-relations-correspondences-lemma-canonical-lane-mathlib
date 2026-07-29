import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean.RelationCorrespondenceDynamics
import DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean.AttractorCorrespondence

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RelationCorrespondenceDynamicsClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- A.object.conclusion provides closure of the dynamics-correspondence package
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedDynamicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dynamics_endgame (A : AdmissibleClass) :
    ConstrainedDynamicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsInvolvingRelationsCorrespondencesLemmaCanonicalLaneLean
end HautevilleHouse