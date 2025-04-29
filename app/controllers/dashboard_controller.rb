class DashboardController < ApplicationController
  def index
    @user = Current.user
    @reservations = Reservation.where(user_id: @user.id)
  end
end
