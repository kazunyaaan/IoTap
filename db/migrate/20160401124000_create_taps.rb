class CreateTaps < ActiveRecord::Migration
  def change
    create_table :taps do |t|
      t.text :tap
      t.text :macaddr
      t.integer :state, default: 0, null: false, limit: 1
      t.user_id:integer
      
      t.timestamps null: false
    end
  end
end
