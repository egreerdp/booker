json.extract! reservation, :id, :room_id, :user_id, :start_time, :end_time, :purpose, :notes, :status, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
