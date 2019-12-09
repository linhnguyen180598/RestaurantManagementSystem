class UsersController < ApplicationController
  before_action :logged_in_user, only: [:update, :destroy]
  before_action :correct_user, only: [:edit, :update]
  
  def index
    @users = User.all.paginate(page: params[:page], per_page: 10)
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Restaurant!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
    @user  = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else 
      render 'edit'
    end 
  end

  def give_admin
    @user = User.find(params[:id])
    @user.update_attribute :admin, true
    redirect_to users_path
  end

  def edit 
    @user = User.find(params[:id])
  end

  private  
  def user_params
    params.require(:user).permit(:name, :email, :phone, :password,
    :password_confirmation, :admin)
  end
end
