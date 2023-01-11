# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' , { name: 'Lord of the Rings' ])
#   Character.create(name: 'Luke', movie: movies.first)

chef = Chef.create!(name: "S. Robert Schwammkopf")

dish = Dish.create!(name: "Krabby Patty", description: "The greatest burger you've never had", chef_id: chef.id)
# binding.pry
ingredient1 = Ingredient.create!(name: "Pickle", calories: 5)
ingredient2 = Ingredient.create!(name: "Lettuce", calories: 5)
ingredient3 = Ingredient.create!(name: "Tomato", calories: 30)
ingredient4 = Ingredient.create!(name: "Cheese", calories: 95)
ingredient5 = Ingredient.create!(name: "Ketchup", calories: 50)
ingredient6 = Ingredient.create!(name: "Mustard", calories: 25)
ingredient7 = Ingredient.create!(name: "Onion", calories: 5)
ingredient8 = Ingredient.create!(name: "SECRET FORMULA", calories: 300)

dish_ingredient1 = DishIngredient.create!(dishes_id: dish.id, ingredients_id: ingredient1.id)
dish_ingredient2 = DishIngredient.create!(dishes_id: dish.id, ingredients_id: ingredient2.id)
dish_ingredient3 = DishIngredient.create!(dishes_id: dish.id, ingredients_id: ingredient3.id)
dish_ingredient4 = DishIngredient.create!(dishes_id: dish.id, ingredients_id: ingredient4.id)
dish_ingredient5 = DishIngredient.create!(dishes_id: dish.id, ingredients_id: ingredient5.id)
dish_ingredient6 = DishIngredient.create!(dishes_id: dish.id, ingredients_id: ingredient6.id)
dish_ingredient7 = DishIngredient.create!(dishes_id: dish.id, ingredients_id: ingredient7.id)
dish_ingredient8 = DishIngredient.create!(dishes_id: dish.id, ingredients_id: ingredient8.id)