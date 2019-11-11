class TableController < ApplicationController
  before_action :admin_user, only: [:new, :destroy, :update, :edit] 

  def new 
    @table = Table.new
  end

  def create
    @table = Table.new(table_params)

  def show
    @table = Table.find(params[:id])
  end 

  def destroy
    Table.find(params[:id])
    flash[:success] = "Table deleted"
    redirect_to 'new'
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
  
  private
  def table_params
    params.require(:table).permit(:table_id,:table_number, :capacity)
  end
end
