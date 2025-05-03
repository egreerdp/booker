class UsersController < ApplicationController
  before_action :current_user
  before_action :authorize_user, only: [ :edit, :update, :destroy ]

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: "Profile was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
    redirect_to root_path, notice: "Profile was successfully deleted."
  end

  def user_params
    params.require(:user).permit(:email_address, :user_name, :display_name)
  end

  def authorize_user
    unless current_user == @user
      redirect_to root_path, alert: "You are not authorized to perform this action."
    end
  end
end
