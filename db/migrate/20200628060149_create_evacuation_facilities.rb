class CreateEvacuationFacilities < ActiveRecord::Migration[6.0]
  def change
    create_table :evacuation_facilities do |t|
      t.string :name, null: false
      t.string :address
      t.string :status
      t.string :facility_type
      t.boolean :core
      t.text :memo_for_mapping
      t.text :memo
      t.string :opened_at
      t.string :closed_at
      t.integer :people_count
      t.string :people_counted_on
      t.text :source_url
      t.text :source_memo
      t.string :city_code
      t.string :prefecture
      t.string :city
      t.string :town
      t.string :tel
      t.float :latitude
      t.float :longitude
      t.float :height
      t.string :tsunami_status
      t.string :earthquake_resistance
      t.string :available_for
      t.string :not_available_for
      t.text :wanted
      t.text :sufficient
      t.text :confused
      t.text :other_memo
      t.string :welfare
      t.text :not_known
      t.datetime :source_confirmed_at
      t.string :staff_name

      t.timestamps
    end
  end
end
