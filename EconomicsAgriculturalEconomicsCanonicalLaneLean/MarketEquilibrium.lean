import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAgriculturalEconomicsCanonicalLaneLean

structure MarketEquilibriumPackage where
  commoditySpace : Type u
  preferenceProfile : Type v
  initialEndowments : Type w
  priceVector : Type x
  excessDemandFunction : Type y
  walrasianEquilibriumDefined : Prop
  existenceConditions : Prop
  uniquenessProperties : Prop
  walrasLawSatisfied : Prop
  convexityAssumptions : Prop
  continuityAssumptions : Prop
  localNonSatiation : Prop

structure MarketEquilibriumEvidence (M : MarketEquilibriumPackage) where
  walrasianEquilibriumDefinedClosed : M.walrasianEquilibriumDefined
  existenceConditionsClosed : M.existenceConditions
  uniquenessPropertiesClosed : M.uniquenessProperties
  walrasLawSatisfiedClosed : M.walrasLawSatisfied
  convexityAssumptionsClosed : M.convexityAssumptions
  continuityAssumptionsClosed : M.continuityAssumptions
  localNonSatiationClosed : M.localNonSatiation

def MarketEquilibriumClosed (M : MarketEquilibriumPackage) : Prop :=
  M.walrasianEquilibriumDefined ∧ M.existenceConditions ∧
  M.uniquenessProperties ∧ M.walrasLawSatisfied ∧
  M.convexityAssumptions ∧ M.continuityAssumptions ∧
  M.localNonSatiation

theorem market_equilibrium_closed_from_evidence
    (M : MarketEquilibriumPackage) (E : MarketEquilibriumEvidence M) :
    MarketEquilibriumClosed M := by
  exact And.intro E.walrasianEquilibriumDefinedClosed
    (And.intro E.existenceConditionsClosed
      (And.intro E.uniquenessPropertiesClosed
        (And.intro E.walrasLawSatisfiedClosed
          (And.intro E.convexityAssumptionsClosed
            (And.intro E.continuityAssumptionsClosed
              E.localNonSatiationClosed)))))

end EconomicsAgriculturalEconomicsCanonicalLaneLean
end HautevilleHouse