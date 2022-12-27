require "rails_helper"

RSpec.describe "Merchant Poros" do

  it "exists and has attributes" do
    attributes = {id: 1, attributes: {name: "Candies Candy"}}

    merchant = Merchant.new(attributes)

    expect(merchant).to be_an_instance_of(Merchant)
    expect(merchant.merch_id).to eq(1)
    expect(merchant.name).to eq("Candies Candy")
  end
end