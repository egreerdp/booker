class CreateAddresses < ActiveRecord::Migration[8.0]
  def change
    create_table :addresses do |t|
      t.string :number
      t.string :street
      t.string :post_code

      t.timestamps
    end
  end
end
