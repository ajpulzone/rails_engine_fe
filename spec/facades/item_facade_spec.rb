require "rails_helper" 

RSpec.describe ItemFacade do
  it "can find all items" do
    expect(ItemFacade.all_items.count).to eq(2483)
    expect(ItemFacade.all_items[0].name).to eq("Item Nemo Facere")
    expect(ItemFacade.all_items[2].name).to_not eq("Item Expedita Aliquam")
  end

  it "can find an item specified by item ID" do
    expect(ItemFacade.find_item(4).name).to eq("Item Nemo Facere")
    expect(ItemFacade.find_item(5).name).to eq("Item Expedita Aliquam")
  end
end