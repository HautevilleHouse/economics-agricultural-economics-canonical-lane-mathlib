import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAgriculturalEconomicsCanonicalLaneLean

structure CommodityEquilibriumPackage where
  commoditySpace : Type u
  priceSystem : commoditySpace → ℝ
  endowment : commoditySpace → ℝ
  demandFunction : commoditySpace → commoditySpace → ℝ
  marketClearingCondition : Prop
  equilibriumExists : Prop
  equilibriumExistsTerm : equilibriumExists

structure CommodityEquilibriumEvidence (C : CommodityEquilibriumPackage) where
  marketClearingConditionClosed : C.marketClearingCondition
  equilibriumExistsClosed : C.equilibriumExists

def CommodityEquilibriumClosed (C : CommodityEquilibriumPackage) : Prop :=
  C.marketClearingCondition ∧ C.equilibriumExists

theorem commodity_equilibrium_closed_from_evidence (C : CommodityEquilibriumPackage) (E : CommodityEquilibriumEvidence C) :
    CommodityEquilibriumClosed C := by
  exact And.intro E.marketClearingConditionClosed E.equilibriumExistsClosed

end EconomicsAgriculturalEconomicsCanonicalLaneLean
end HautevilleHouse