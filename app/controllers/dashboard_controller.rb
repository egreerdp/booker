class DashboardController < ApplicationController
  before_action :current_user
  before_action :current_reservations
  before_action :current_events

  def index
  end
end
