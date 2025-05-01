class RenameTableUserToUsers < ActiveRecord::Migration[8.0]
  def change
    rename_table :user, :users
  end
end
