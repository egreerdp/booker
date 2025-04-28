class AddNameToRoomStatuses < ActiveRecord::Migration[8.0]
  def change
    add_column :room_statuses, :name, :string
  end
end
