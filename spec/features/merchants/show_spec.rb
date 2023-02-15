require 'rails_helper'

RSpec.describe "Merchant Show Page" do
  context "challenge" do
    it "displays a merchant data" do
      # I should be on page '/merchants/:id' <br>
      visit merchant_path(1)
      # And I should see a list of items that merchant sells.
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Expedita Aliquam")
      expect(page).to have_content("Item Provident At")
      expect(page).to have_content("Item Expedita Fuga")
    end
  end
end