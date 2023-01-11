class ChefController < ActionController::Base
  def show
    @chef = Chef.find
  end
end
