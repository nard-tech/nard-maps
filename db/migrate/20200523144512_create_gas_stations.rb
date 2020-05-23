class CreateGasStations < ActiveRecord::Migration[6.0]
  def change
    create_table :gas_stations do |t|
      t.string :name
      t.string :company_name
      t.string :brand_name
      t.string :shop_name
      t.string :address
      t.string :category
      t.integer :status
      t.string :memo_for_mapping
      t.text :memo
      t.string :date
      t.string :open_hours
      t.string :source_url
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
  end
end
