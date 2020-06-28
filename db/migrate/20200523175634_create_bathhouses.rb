class CreateBathhouses < ActiveRecord::Migration[6.0]
  def change
    create_table :bathhouses do |t|
      t.string :name
      t.string :address
      t.integer :status
      t.string :date
      t.string :closed_on
      t.string :open_hours
      t.text :memo
      t.text :source_url
      t.text :source_memo
      t.string :prefecture
      t.string :city
      t.string :town
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
