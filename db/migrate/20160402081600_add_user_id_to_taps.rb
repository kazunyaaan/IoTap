class AddUserIdToTaps < ActiveRecord::Migration
  def change
    add_column :taps, :user_id, :integer
  end
end
