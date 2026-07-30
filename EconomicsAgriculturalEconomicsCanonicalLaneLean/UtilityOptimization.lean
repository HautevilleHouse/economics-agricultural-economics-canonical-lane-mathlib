import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAgriculturalEconomicsCanonicalLaneLean

structure UtilityOptimizationPackage where
  consumptionSet : Type u
  preferenceRelation : consumptionSet → consumptionSet → Prop
  utilityFunction : consumptionSet → ℝ
  budgetConstraint : consumptionSet → ℝ
  optimalChoice : consumptionSet
  utilityMaximized : Prop
  utilityMaximizedTerm : utilityMaximized

structure UtilityOptimizationEvidence (U : UtilityOptimizationPackage) where
  utilityMaximizedClosed : U.utilityMaximized

def UtilityOptimizationClosed (U : UtilityOptimizationPackage) : Prop :=
  U.utilityMaximized

theorem utility_optimization_closed_from_evidence (U : UtilityOptimizationPackage) (E : UtilityOptimizationEvidence U) :
    UtilityOptimizationClosed U := by
  exact E.utilityMaximizedClosed

end EconomicsAgriculturalEconomicsCanonicalLaneLean
end HautevilleHouse