require "rails_helper"

RSpec.describe MerchantFacade do
  it "can find all merchants" do
    expect(MerchantFacade.all_merchants.count).to eq(100)
    expect(MerchantFacade.all_merchants[0].name).to eq("Schroeder-Jerde")
    expect(MerchantFacade.all_merchants[2].name).to_not eq("Klein, Rempel and Jones")
  end

  it "can find a merchant specified by merchant ID" do
    expect(MerchantFacade.find_merchant(1).name).to eq("Schroeder-Jerde")
  end

  it "can find all items that belong to a merchant, given the merchant ID" do
    expect(MerchantFacade.merchant_items(1).count).to eq(15)
    expect((MerchantFacade.merchant_items(1)[0]).name).to eq("Item Nemo Facere")
    expect((MerchantFacade.merchant_items(1)[1]).name).to eq("Item Expedita Aliquam")
  end
end