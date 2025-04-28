class DashboardController < ApplicationController
  def show
    @buildings = Building.all
    @building_count = Building.count
    @reservations = Reservation.all
  end
end
