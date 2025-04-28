class CreateBuildings < ActiveRecord::Migration[8.0]
  def change
    create_table :buildings do |t|
      t.string :name
      t.integer :number
      t.integer :capacity
      t.integer :floors

      t.timestamps
    end
  end
end
