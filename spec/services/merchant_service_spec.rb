require "rails_helper"

RSpec.describe "Merchant Service Spec" do
  
  describe "class methods" do
    describe "#find_all_merchants" do
      it "returns a list of all merchants" do
        expect(MerchantService.find_all_merchants.class).to eq(Hash)
      end
    end
    
    describe "#find_a_merchant" do
      it "returns the merchant specified by id" do
        expect(MerchantService.find_a_merchant(1).class).to eq(Hash)
      end
    end

    describe "#find_merchant_items" do
      it "returns a list of all items that belong to the merchant with the specified ID" do
        expect(MerchantService.find_merchant_items(1).class).to eq(Hash)
      end
    end
  end
end