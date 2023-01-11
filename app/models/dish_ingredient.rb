class DishIngredient < ApplicationRecord
  # validates_presence_of :dishes_id, :ingredients_id
  belongs_to :dish, optional: true
  belongs_to :ingredient, optional: true
end