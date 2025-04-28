class CreateRoomStatuses < ActiveRecord::Migration[8.0]
  def change
    create_table :room_statuses do |t|
      t.timestamps
    end
  end
end
