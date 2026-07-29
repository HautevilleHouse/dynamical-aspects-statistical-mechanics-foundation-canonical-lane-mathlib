import canonicalLaneMathlib.AdmissibleClass

/-!
# Ergodic Theorem Package
-/

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean

structure ErgodicTheoremPackage where
  dynamicalSystem : Type u
  invariantMeasure : Type v
  timeEvolution : dynamicalSystem → dynamicalSystem
  ergodicity : Prop
  mixing : Prop
  recurrence : Prop

def ErgodicTheoremClosed (E : ErgodicTheoremPackage) : Prop :=
  E.ergodicity ∧ E.mixing ∧ E.recurrence

structure ErgodicTheoremEvidence (E : ErgodicTheoremPackage) where
  ergodicityClosed : E.ergodicity
  mixingClosed : E.mixing
  recurrenceClosed : E.recurrence

theorem ergodic_theorem_closed_from_evidence (E : ErgodicTheoremPackage) (Ev : ErgodicTheoremEvidence E) :
    ErgodicTheoremClosed E := by
  exact And.intro Ev.ergodicityClosed (And.intro Ev.mixingClosed Ev.recurrenceClosed)

end DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse