require 'rails_helper'

RSpec.describe 'Dishes Show Page', type: :feature do
  let!(:chef) {Chef.create!(name: "S. Robert Schwammkopf")}

  let!(:dish) {Dish.create!(name: "Krabby Patty", description: "The greatest burger you've never had", chef_id: chef.id)}
  
  let!(:ingredient1) {Ingredient.create!(name: "Pickle", calories: 5)}
  let!(:ingredient2) {Ingredient.create!(name: "Lettuce", calories: 5)}
  let!(:ingredient3) {Ingredient.create!(name: "Tomato", calories: 30)}
  let!(:ingredient4) {Ingredient.create!(name: "Cheese", calories: 95)}
  let!(:ingredient5) {Ingredient.create!(name: "Ketchup", calories: 50)}
  let!(:ingredient6) {Ingredient.create!(name: "Mustard", calories: 25)}
  let!(:ingredient7) {Ingredient.create!(name: "Onion", calories: 5)}
  let!(:ingredient8) {Ingredient.create!(name: "SECRET FORMULA", calories: 300)}
  
  let!(:dish_ingredient1) {DishIngredient.create!(dishes_id: dish.id, ingredients_id: ingredient1.id)}
  let!(:dish_ingredient2) {DishIngredient.create!(dishes_id: dish.id, ingredients_id: ingredient2.id)}
  let!(:dish_ingredient3) {DishIngredient.create!(dishes_id: dish.id, ingredients_id: ingredient3.id)}
  let!(:dish_ingredient4) {DishIngredient.create!(dishes_id: dish.id, ingredients_id: ingredient4.id)}
  let!(:dish_ingredient5) {DishIngredient.create!(dishes_id: dish.id, ingredients_id: ingredient5.id)}
  let!(:dish_ingredient6) {DishIngredient.create!(dishes_id: dish.id, ingredients_id: ingredient6.id)}
  let!(:dish_ingredient7) {DishIngredient.create!(dishes_id: dish.id, ingredients_id: ingredient7.id)}
  let!(:dish_ingredient8) {DishIngredient.create!(dishes_id: dish.id, ingredients_id: ingredient8.id)}
  

  describe 'User Story 1' do
    it 'when I visit a dish show page' do
      # When I visit a dish's show page
      visit dish
      
      # I see the dish’s name and description
      expect(page).to have_content(dish.name)
      expect(page).to have_content(dish.description)
      
      expect(page).to have_content(ingredient1.name)
      expect(page).to have_content(ingredient2.name)
      expect(page).to have_content(ingredient3.name)
      expect(page).to have_content(ingredient4.name)
      expect(page).to have_content(ingredient5.name)
      expect(page).to have_content(ingredient6.name)
      expect(page).to have_content(ingredient7.name)
      expect(page).to have_content(ingredient8.name)
      
      expect(page).to have_content(dish.calories)
      expect(page).to have_content(chef.name)
    end
  end
end

# As a visitor
# When I visit a dish's show page
# I see the dish’s name and description
# And I see a list of ingredients for that dish
# and a total calorie count for that dish
# And I see the chef's name.