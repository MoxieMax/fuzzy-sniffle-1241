class DishController < ActionController::Base
  def show
    @dish = Dish.find(params[:merchant_id])
  end
end
