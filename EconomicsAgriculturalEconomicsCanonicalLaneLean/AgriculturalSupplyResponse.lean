import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAgriculturalEconomicsCanonicalLaneLean

structure AgriculturalSupplyParameters where
  price : ℝ
  inputCost : ℝ
  technologyShock : ℝ
  acreage : ℝ

structure AgriculturalSupplyResponsePackage (A : AgriculturalSupplyParameters) where
  supplyQuantity : ℝ
  priceElasticity : Prop
  inputCostElasticity : Prop
  profitMaximization : Prop

def AgriculturalSupplyResponseEvidence {A : AgriculturalSupplyParameters}
    (S : AgriculturalSupplyResponsePackage A) : Prop :=
  S.priceElasticity ∧ S.inputCostElasticity ∧ S.profitMaximization

def AgriculturalSupplyResponseClosed {A : AgriculturalSupplyParameters}
    (S : AgriculturalSupplyResponsePackage A) : Prop :=
  S.priceElasticity ∧ S.inputCostElasticity ∧ S.profitMaximization

theorem agricultural_supply_response_closed_from_evidence
    {A : AgriculturalSupplyParameters} (S : AgriculturalSupplyResponsePackage A)
    (E : AgriculturalSupplyResponseEvidence S) : AgriculturalSupplyResponseClosed S := by
  exact And.intro E (And.intro (by exact E.2) (by exact E.3))

end EconomicsAgriculturalEconomicsCanonicalLaneLean
end HautevilleHouse
