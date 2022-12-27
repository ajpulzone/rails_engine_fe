require "rails_helper"

RSpec.describe "Merchants Index Page" do
  #Is this when one would implement VCR and WebMock?
  it "has a list of merchants by name, and each name is a link to that merchants' show page" do
    visit "/merchants"

    within("#merchants_1") do
      expect(page).to have_link("Schroeder-Jerde")
    end 

    within("#merchants_2") do
      expect(page).to have_link("Klein, Rempel and Jones")
      expect(page).to have_no_link("Schroeder-Jerde")
      click_link("Klein, Rempel and Jones")

      expect(current_path).to eq("/merchants/2")
    end 
  end
end