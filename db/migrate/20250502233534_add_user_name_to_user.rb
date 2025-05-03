class AddUserNameToUser < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :user_name, :string
    add_column :users, :display_name, :string
  end
end
