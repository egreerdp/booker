class DashboardController < ApplicationController
  def index
    @buildings = Building.all
    @building_count = Building.count
    @reservations = Reservation.all
  end
end
