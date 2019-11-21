class DishesController < ApplicationController
  
  def index
    @dishes = Dish.all
  end 
    
  def show
    @dish = Dish.find(params[:id])
    @comments = @dish.comments.paginate(page: params[:page])
  end
end
