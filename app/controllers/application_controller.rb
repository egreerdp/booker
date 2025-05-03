class ApplicationController < ActionController::Base
  include Authentication

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :set_current_user
  helper_method :current_user

  private

  def set_current_user
    return unless session[:user_id]
    @user ||= User.find_by(id: session[:user_id])
  end

  def current_user
    @user = Current.user
  end

  def current_reservations
    @reservations = Reservation.where(user_id: current_user.id).order(start_time: :asc)
  end

  def current_events
    @events = Event.order(id: :desc)
  end
end
