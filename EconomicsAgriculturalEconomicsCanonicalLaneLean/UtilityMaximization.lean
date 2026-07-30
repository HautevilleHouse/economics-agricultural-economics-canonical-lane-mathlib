import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAgriculturalEconomicsCanonicalLaneLean

structure UtilityFunction where
  consumptionSet : Type u
  utility : consumptionSet → ℝ
  completeness : Prop
  transitivity : Prop
  continuity : Prop

structure UtilityMaximizationPackage (U : UtilityFunction) where
  budgetConstraint : ℝ
  optimalChoice : U.consumptionSet
  optimalityCondition : Prop

def UtilityMaximizationEvidence {U : UtilityFunction} (M : UtilityMaximizationPackage U) : Prop :=
  M.optimalityCondition

def UtilityMaximizationClosed {U : UtilityFunction} (M : UtilityMaximizationPackage U) : Prop :=
  M.optimalityCondition

theorem utility_maximization_closed_from_evidence
    {U : UtilityFunction} (M : UtilityMaximizationPackage U) (E : UtilityMaximizationEvidence M) :
    UtilityMaximizationClosed M := by
  exact E

end EconomicsAgriculturalEconomicsCanonicalLaneLean
end HautevilleHouse
