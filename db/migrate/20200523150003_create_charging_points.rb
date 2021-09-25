class CreateChargingPoints < ActiveRecord::Migration[6.0]
  def change
    create_table :charging_points do |t|
      t.string :name, null: false
      t.string :address
      t.string :status
      t.text :memo_for_mapping
      t.text :memo
      t.string :date
      t.string :open_hours
      t.string :closed_on
      t.string :carieer
      t.text :source_url
      t.text :source_memo
      t.string :city_code
      t.string :prefecture
      t.string :city
      t.string :town
      t.string :tel
      t.float :latitude
      t.float :longitude
      t.datetime :source_confirmed_at
      t.string :staff_name

      t.timestamps
    end

    add_index :charging_points, :name
    add_index :charging_points, :address
    add_index :charging_points, :status
    add_index :charging_points, :date
  end
end
