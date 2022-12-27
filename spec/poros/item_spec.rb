require "rails_helper" 

RSpec.describe "Item Poros" do
  
  it "exists and has attributes" do
    merch_attributes = {id: 2, attributes: {name: "Candies Candy"}}
    item_attributes = {id: 1, attributes: {name: "Fudge", description: "Peanut Butter and Chocolate", unit_price: 4.99, merchant_id: 2 }}
    merchant = Merchant.new(merch_attributes)
    item = Item.new(item_attributes)
    
    expect(item).to be_an_instance_of(Item)
    expect(item.item_id).to eq(1)
    expect(item.name).to eq("Fudge")
    expect(item.description).to eq("Peanut Butter and Chocolate")
    expect(item.unit_price).to eq(4.99)
    expect(item.merch_id).to eq(2)
  end
end