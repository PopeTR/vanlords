class UsersController < ApplicationController
  before_action :find_user, :only [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @user(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user.destroy
    redirect_to home_path
  end

  private

  def find_user
    @user = User.find(params[:id])    
  end

  def user_params
    params[:user].permit(:name, :email, :phone_number, :photo)
  end
end
