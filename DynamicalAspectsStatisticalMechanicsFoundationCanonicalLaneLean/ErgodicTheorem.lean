import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean

structure ErgodicTheorem where
  dynamicalSystem : DynamicalSystem
  observable : dynamicalSystem.stateSpace → ℝ
  timeAverageExists : Prop
  spaceAverageEqualsTimeAverage : Prop
  ergodicMeasureSupport : Set (Measure dynamicalSystem.stateSpace)

structure ErgodicTheoremEvidence (E : ErgodicTheorem) where
  timeAverageExistsClosed : E.timeAverageExists
  spaceAverageEqualsTimeAverageClosed : E.spaceAverageEqualsTimeAverage
  ergodicMeasureSupportNonempty : E.ergodicMeasureSupport.Nonempty

def ErgodicTheoremClosed (E : ErgodicTheorem) : Prop :=
  E.timeAverageExists ∧ E.spaceAverageEqualsTimeAverage ∧ E.ergodicMeasureSupport.Nonempty

theorem ergodic_theorem_closed_from_evidence (E : ErgodicTheorem) (Ev : ErgodicTheoremEvidence E) :
    ErgodicTheoremClosed E := by
  exact And.intro Ev.timeAverageExistsClosed
    (And.intro Ev.spaceAverageEqualsTimeAverageClosed Ev.ergodicMeasureSupportNonempty)

end DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse
