import canonicalLaneMathlib.AdmissibleClass

/-!
# Asset Pricing Package
-/

namespace HautevilleHouse
namespace EconomicsAgriculturalEconomicsCanonicalLaneLean

structure AssetPricingPackage where
  stochasticDiscountFactor : Type
  assetPayoffs : Prop
  priceSystem : Prop
  noArbitrage : Prop
  riskNeutralValuation : Prop

structure AssetPricingEvidence (A : AssetPricingPackage) where
  stochasticDiscountFactorClosed : A.stochasticDiscountFactor
  assetPayoffsClosed : A.assetPayoffs
  priceSystemClosed : A.priceSystem
  noArbitrageClosed : A.noArbitrage
  riskNeutralValuationClosed : A.riskNeutralValuation

def AssetPricingClosed (A : AssetPricingPackage) : Prop :=
  A.stochasticDiscountFactor ∧ A.assetPayoffs ∧ A.priceSystem ∧ A.noArbitrage ∧ A.riskNeutralValuation

theorem asset_pricing_closed_from_evidence (A : AssetPricingPackage) (E : AssetPricingEvidence A) : AssetPricingClosed A := by
  exact And.intro E.stochasticDiscountFactorClosed (And.intro E.assetPayoffsClosed (And.intro E.priceSystemClosed (And.intro E.noArbitrageClosed E.riskNeutralValuationClosed)))

end EconomicsAgriculturalEconomicsCanonicalLaneLean
end HautevilleHouse