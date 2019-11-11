class ReservationsController < ApplicationController
  before_action :correct_user, only: [:index, :show, :create, :update, :destroy]
  
  def index
    @reservations = Post.all.order(:book_time)
  end

  def show
    @reservation = Reservation.find(params[:id])
  end 

  def create
    @reservation = Reservation.new(reservation_params)
    if Table.reserved? == false 
      @reservation.save
    else @reservation.destroy , render 'new'
    end
  end

  def new
    @reservation = Reservation.new
  end
 
  private  
  def reservation_params
    params.require(:reservation).permit(:guest_number, :book_time)
  end 
end
