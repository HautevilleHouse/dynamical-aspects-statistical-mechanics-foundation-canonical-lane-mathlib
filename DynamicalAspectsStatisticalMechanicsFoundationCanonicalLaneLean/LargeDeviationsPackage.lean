import canonicalLaneMathlib.AdmissibleClass

/-!
# Large Deviations Package
-/

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean

structure LargeDeviationsPackage where
  observable : Type u
  empiricalMeasure : Type v
  rateFunction : ℝ → ℝ
  lowerBound : Prop
  upperBound : Prop
  convexity : Prop

def LargeDeviationsClosed (L : LargeDeviationsPackage) : Prop :=
  L.lowerBound ∧ L.upperBound ∧ L.convexity

structure LargeDeviationsEvidence (L : LargeDeviationsPackage) where
  lowerBoundClosed : L.lowerBound
  upperBoundClosed : L.upperBound
  convexityClosed : L.convexity

theorem large_deviations_closed_from_evidence (L : LargeDeviationsPackage) (E : LargeDeviationsEvidence L) :
    LargeDeviationsClosed L := by
  exact And.intro E.lowerBoundClosed (And.intro E.upperBoundClosed E.convexityClosed)

end DynamicalAspectsStatisticalMechanicsFoundationCanonicalLaneLean
end HautevilleHouse