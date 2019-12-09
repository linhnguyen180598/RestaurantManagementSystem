class Admin::BillsController < Admin::BaseController
  
  def index
    @bills = Bill.all
  end 

  def show
    @bill = Bill.find(params[:id])
  end

  def new
    @bill = Bill.new
  end
  
  def create
    @bill = Bill.new(bill_params)
    if @dish.save
      flash[:success] = "Bill created"
      redirect_to admin_bills_path
    else
      render 'new'
    end
  end

  def destroy
    Bill.find(params[:id]).destroy
    flash[:success] = "Bill deleted"
    redirect_to admin_bill_path
  end


  private
  def dish_params
    params.require(:bill).permit(:name, :category, :price, :description)
  end
end


end
