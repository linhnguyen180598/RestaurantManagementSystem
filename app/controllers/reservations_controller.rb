class ReservationsController < ApplicationController
  protect_from_forgery
  before_action :load_reservation, only: [:edit, :show,:update]
  
  def new
    @reservation = Reservation.new
  end

  def index
    @reservations = Reservation.where(user_id: current_user.id)
    @all_reservations = Reservation.all.order(:book_time)
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id = current_user.id
    if @reservation.save 
      flash[:success] = " ok"
      redirect_to @reservation
    else
      flash.now[:danger] = "not ok"
      render 'new'
    end
  end

  def show
  end 

  def edit 
  end

  def destroy
    Reservation.find(params[:id]).destroy
    flash[:success] = "ok"
    redirect_to reservations_path
  end

  def update 
    if @reservation.update_attributes(reservation_params)
      flash[:success] = "Reservation updated"
      redirect_to @reservation
    else
      render 'edit'
    end
  end
 
  private 
  def reservation_params
    params.require(:reservation).permit(:guest_number,:book_time,:user_id)
  end

  def load_reservation
    @reservation = Reservation.find(params[:id])
  end
end
