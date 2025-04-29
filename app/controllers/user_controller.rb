class UserController < ApplicationController

  def show
    @user = current_user
  end

  def edit
    # TODO: update email etc, just needs to be a simple form
  end
end
