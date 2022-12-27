require "rails_helper"

RSpec.describe "Item Service Spec" do

  describe "class methods" do
    describe "find_all_items" do
      it "returns a list of all items" do
        expect(ItemService.find_all_items.class).to eq(Hash)
      end
    end

    describe "find_an_item" do
      it "returns the item specified by id" do
        expect(ItemService.find_an_item(4).class).to eq(Hash)
      end
    end
  end
end