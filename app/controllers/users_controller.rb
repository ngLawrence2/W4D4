  class UsersController < ApplicationController
  
  before_action :require_current_user!, except: [:create,:new]
  def new
    @user = User.new
    render :new
  end

  def show
    @user = User.find(params[:id])
    render :show if @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
        log_in_user!(@user)
        redirect_to user_url(@user)
    else
      flash[:error] = "Invalid"
    end
  end


  private
  def user_params
    params.require(:user).permit(:email,:password)
  end
end
