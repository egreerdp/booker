class Reservation < ApplicationRecord
  belongs_to :room
  belongs_to :user
  belongs_to :room_status

  validate :check_availability

  def check_availability
    overlapping_reservations = Reservation.where(room_id: room_id)
      .where.not(id: id) # Exclude the current reservation if it's being updated
      .where("start_time < ? AND end_time > ?", end_time, start_time)

    if overlapping_reservations.exists?
      errors.add(:base, "This room is already reserved during the selected time.")
    end
  end

  def has_passed
    Time.zone.now.round(60) > self.end_time.round(60)
  end
end
