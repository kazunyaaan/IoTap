class CreateTaps < ActiveRecord::Migration
  def change
    create_table :taps do |t|
      t.text :tap
      t.text :macaddr
      t.integer :state

      t.timestamps null: false
    end
  end
end
