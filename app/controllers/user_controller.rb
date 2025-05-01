class UserController < ApplicationController
  before_action :current_user

  def show
  end

  def edit
    # TODO: update email etc, just needs to be a simple form
  end
end
