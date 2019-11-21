class Admin::DishesController < Admin::BaseController
  
  def index
    @dishes = Dish.all
  end 

  def show
    @dish = Dish.find(params[:id])
  end

  def new
    @dish = Dish.new
  end
  
  def create
    @dish = Dish.new(dish_params)
    if @dish.save
      flash[:success] = "Dish created"
      redirect_to admin_dishes_path
    else
      render 'new'
    end
  end

  def edit 
    @dish = Dish.find(params[:id])
  end

  def update
    @dish = Dish.find(params[:id])
    if @dish.update_attributes(dish_params)
      flash[:success] = "Dish updated"
      redirect_to admin_dishes_path
    else
      render 'edit'
    end 
  end

  def destroy
    Dish.find(params[:id]).destroy
    flash[:success] = "Dish deleted"
    redirect_to admin_dishes_path
  end


  private
  def dish_params
    params.require(:dish).permit(:name, :category, :price, :description)
  end
end
