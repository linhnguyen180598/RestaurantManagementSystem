class TablesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :admin_user, only: [:new, :destroy, :update, :edit] 

  def new 
    @table = Table.new
  end

  def index
    @tables = Table.all.order(:reserved)
  end
  
  def create
    @table = Table.new(table_params)
    if @table.save
      flash[:success] = "ok"
      redirect_to tables_path
    else
      render 'new'
    end
  end 
  
  def show
    @table = Table.find_by(params[:id])
  end 

  def destroy
    @table = Table.find(params[:id])
    if @table.not(reserved: true)
      @table.destroy
      flash[:success] = "Table deleted"
      redirect_to tables_path
    else flash[:danger] = "Table still has a reservation, check it again"
      redirect_to reservation_table_path
    end
  end

  def edit
    @table = Table.find(params[:id])  
  end

  def update 
    @table = Table.find(params[:id])
    if @table.update_attributes(table_params)
      flash[:success] = "Table updated"
      redirect_to @table
    else
      render 'edit'
    end
  end

  def reservation_table
    @empty_tables= Table.where(reserved: false)
    @empty_reservations = Reservation.where(table_id: nil)
    @existing_reservations = Reservation.where.not(table_id: nil)
  end

  def assign_table
    Table.find(params[:table_id]).update reserved: true
    Reservation.find(params[:reservation_id]).update table_id: params[:table_id]
    redirect_to reservation_table_path
  end

  # def unassign_table
  #   Reservation.find(params[:reservation_id]).update table_id: nil
  #   Table.find(params[:table_id]).update reserved: false
  #   redirect_to reservation_table_path
  # end 

  private
  def table_params
    params.require(:table).permit(:table_id,:table_number, :capacity, :reserved)
  end
end
