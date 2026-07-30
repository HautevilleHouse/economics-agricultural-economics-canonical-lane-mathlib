import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAgriculturalEconomicsCanonicalLaneLean

structure AgriculturalMarketEquilibriumPackage where
  commoditySupply : Prop
  commodityDemand : Prop
  priceDetermination : Prop
  storageTechnology : Prop
  seasonalityFactors : Prop
  governmentIntervention : Prop

structure AgriculturalMarketEquilibriumEvidence (A : AgriculturalMarketEquilibriumPackage) where
  commoditySupplyClosed : A.commoditySupply
  commodityDemandClosed : A.commodityDemand
  priceDeterminationClosed : A.priceDetermination
  storageTechnologyClosed : A.storageTechnology
  seasonalityFactorsClosed : A.seasonalityFactors
  governmentInterventionClosed : A.governmentIntervention

def AgriculturalMarketEquilibriumClosed (A : AgriculturalMarketEquilibriumPackage) : Prop :=
  A.commoditySupply ∧ A.commodityDemand ∧ A.priceDetermination ∧
  A.storageTechnology ∧ A.seasonalityFactors ∧ A.governmentIntervention

theorem agricultural_market_equilibrium_closed_from_evidence
    (A : AgriculturalMarketEquilibriumPackage)
    (E : AgriculturalMarketEquilibriumEvidence A) :
    AgriculturalMarketEquilibriumClosed A := by
  exact And.intro E.commoditySupplyClosed
    (And.intro E.commodityDemandClosed
      (And.intro E.priceDeterminationClosed
        (And.intro E.storageTechnologyClosed
          (And.intro E.seasonalityFactorsClosed E.governmentInterventionClosed))))

end EconomicsAgriculturalEconomicsCanonicalLaneLean
end HautevilleHouse
