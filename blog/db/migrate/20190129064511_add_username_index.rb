class AddUsernameIndex < ActiveRecord::Migration[5.2]
  def change
  	add_index :users, :useername, unique: true
  end
end
