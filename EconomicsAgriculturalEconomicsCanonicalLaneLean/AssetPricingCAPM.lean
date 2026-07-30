import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAgriculturalEconomicsCanonicalLaneLean

structure AssetPricingPackage (A : AdmissibleClass) where
  assetSpace : Type u
  returnDistribution : Type v
  riskFreeAsset : Type w
  marketPortfolio : Type x
  capitalMarketLine : Prop
  securityMarketLine : Prop
  betaPricing : Prop
  efficientFrontier : Prop
  twoFundSeparation : Prop

structure AssetPricingEvidence (A : AdmissibleClass) (P : AssetPricingPackage A) where
  capitalMarketLineClosed : P.capitalMarketLine
  securityMarketLineClosed : P.securityMarketLine
  betaPricingClosed : P.betaPricing
  efficientFrontierClosed : P.efficientFrontier
  twoFundSeparationClosed : P.twoFundSeparation

def AssetPricingClosed (A : AdmissibleClass) (P : AssetPricingPackage A) : Prop :=
  P.capitalMarketLine ∧ P.securityMarketLine ∧
  P.betaPricing ∧ P.efficientFrontier ∧ P.twoFundSeparation

theorem asset_pricing_closed_from_evidence
    (A : AdmissibleClass) (P : AssetPricingPackage A) (E : AssetPricingEvidence A P) :
    AssetPricingClosed A P := by
  exact And.intro E.capitalMarketLineClosed
    (And.intro E.securityMarketLineClosed
      (And.intro E.betaPricingClosed
        (And.intro E.efficientFrontierClosed E.twoFundSeparationClosed)))

end EconomicsAgriculturalEconomicsCanonicalLaneLean
end HautevilleHouse