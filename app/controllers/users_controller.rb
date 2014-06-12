class UsersController < ApplicationController
  def edit
    @user = current_user
  end

  def update
    # current_user.update_attributes(params[:user])
  end

  def show
    @user = User.find(params[:id])
  end
end
