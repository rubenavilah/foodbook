class DishesController < ApplicationController
  def new
    @dish = Dish.new
  end
  def create
    dish = Dish.new(user_params)
    dish.save
    redirect_to root_path
  end
end

private
def user_params
  params.require(:dish).permit(:name, :price, :origin);
end
