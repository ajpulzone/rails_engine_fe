require "rails_helper" 

RSpec.describe "Items Show Page" do

  it "has a list of items by name, and each name is a link to that items show page" do
    visit "/items"

    within("#items") do
      expect(page).to have_link("Item Nemo Facere")
      expect(page).to have_link("Item Provident At")
      expect(page).to have_link("Item Qui Veritatis")
      expect(page).to have_no_content("Pudding Pops")
    end   
  end
end