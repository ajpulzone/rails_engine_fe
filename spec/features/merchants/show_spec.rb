require "rails_helper"

RSpec.describe "Merchants Show Page" do

  it "should show a list of all items that the specified merchant sells" do
    visit "merchants/1"

    within("#items") do
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Expedita Aliquam")
      expect(page).to have_no_content("Item Adipisci Sint")
    end 
  end
end