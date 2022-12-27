require "rails_helper" 

RSpec.describe "Items Index Page" do

  it "has a list of items by name, and each name is a link to that items show page" do
    visit "/items"

      expect(page).to have_link("Item Nemo Facere")
      expect(page).to have_link("Item Provident At")
      expect(page).to have_link("Item Qui Veritatis")
      expect(page).to have_no_link("Pudding Pops")
    end   
  it "when the item name link is clicked, the user is taken to that items' show page" do
      visit "/items"

      within("#items_")
      click_link("Item Nemo Facere")
      expect(current_path).to eq("/items/4")
    end

end