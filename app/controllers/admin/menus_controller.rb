class Admin::MenusController < Admin::BaseController
  def index
    @menus = Menu.all
  end 

  def show
    @menu = Menu.find(params[:id])
    @dishes = @menu.dishes

  def new
    @menu = Menu.new
    @dishes = Dish.all
  end
  
  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      flash[:success] = "Menu created"
      redirect_to admin_menu_path(@menu)
    else
      render 'new'
    end
  end

  def edit 
    @menu = Menu.find(params[:id])
  end

  def update
    @menu = Menu.find(params[:id])
    if @menu.update_attributes(menu_params)
      flash[:success] = "Menu updated"
      redirect_to admin_menus_path
    else
      render 'edit'
    end 
  end

  def destroy
    Menu.find(params[:id]).destroy
    flash[:success] = "Menu deleted"
    redirect_to admin_menus_path
  end


  private
  def menu_params
    params.require(:menu).permit(:name, :dishes)
  end
end
