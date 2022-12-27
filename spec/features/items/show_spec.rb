require "rails_helper" 

RSpec.describe "Items Show Page" do

  it "has the specified items name, description and unit price" do
    visit "/items/4"
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
      expect(page).to have_content(42.91)
      
      expect(page).to have_no_content("Item Expedita Aliquam")
  end
end