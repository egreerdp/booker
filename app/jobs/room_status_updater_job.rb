class RoomStatusUpdaterJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Reservation.where("end_time < ?", Time.current).update_all(status: "expired")
  end

end
