require 'rails_helper'

describe 'As a visitor' do
  describe "When I visit '/ingredients'" do
    it 'I see a list of all the ingredients including their name and cost' do
      beef = Ingredient.create!(name: "ground beef", cost: 5)
      sauce = Ingredient.create!(name: "tomato sauce", cost: 4)
      noods = Ingredient.create!(name: "spaghetti noodles", cost: 3)

      visit '/ingredients'

      expect(page).to have_content("ground beef: 5")
      expect(page).to have_content("tomato sauce: 4")
      expect(page).to have_content("spaghetti noodles: 3")
    end
  end
end