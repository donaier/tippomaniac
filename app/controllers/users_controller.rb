class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
  end

  def update
    current_user.update_attributes(user_params)
    redirect_to user_path(current_user)
  end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :avatar)
  end
end
