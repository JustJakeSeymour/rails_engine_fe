require 'rails_helper'

RSpec.describe "Merchants Index Page" do
  context "challenge" do
    it "displays list of merchants by name" do
      # When I visit '/merchants' <br>
      visit merchants_path
      # I should see a list of merchants by name <br>
      expect(page).to have_link("Willms and Sons")
      expect(page).to have_link("Klein, Rempel and Jones")
      expect(page).to have_link("Schroeder-Jerde")
      # and when I click the merchant's name <br>
      click_link("Schroeder-Jerde")
      # I should be on page '/merchants/:id' <br>
      expect(current_path).to eq('/merchants/1')
      # And I should see a list of items that merchant sells.
    end
  end
end