# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_28_060149) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "bathhouses", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "status"
    t.string "date"
    t.string "closed_on"
    t.string "open_hours"
    t.text "memo"
    t.text "source_url"
    t.text "source_memo"
    t.string "prefecture"
    t.string "city"
    t.string "town"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "charging_points", force: :cascade do |t|
    t.string "name", null: false
    t.string "address"
    t.string "status"
    t.text "memo_for_mapping"
    t.text "memo"
    t.string "date"
    t.string "open_hours"
    t.string "closed_on"
    t.string "carieer"
    t.text "source_url"
    t.text "source_memo"
    t.string "city_code"
    t.string "prefecture"
    t.string "city"
    t.string "town"
    t.string "tel"
    t.float "latitude"
    t.float "longitude"
    t.datetime "source_confirmed_at"
    t.string "staff_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address"], name: "index_charging_points_on_address"
    t.index ["date"], name: "index_charging_points_on_date"
    t.index ["name"], name: "index_charging_points_on_name"
    t.index ["status"], name: "index_charging_points_on_status"
  end

  create_table "evacuation_facilities", force: :cascade do |t|
    t.string "name", null: false
    t.string "address"
    t.string "status"
    t.string "facility_type"
    t.boolean "core"
    t.text "memo_for_mapping"
    t.text "memo"
    t.string "opened_at"
    t.string "closed_at"
    t.integer "people_count"
    t.string "people_counted_on"
    t.text "source_url"
    t.text "source_memo"
    t.string "city_code"
    t.string "prefecture"
    t.string "city"
    t.string "town"
    t.string "tel"
    t.float "latitude"
    t.float "longitude"
    t.float "height"
    t.string "tsunami_status"
    t.string "earthquake_resistance"
    t.string "available_for"
    t.string "not_available_for"
    t.text "wanted"
    t.text "sufficient"
    t.text "confused"
    t.text "other_memo"
    t.string "welfare"
    t.text "not_known"
    t.datetime "source_confirmed_at"
    t.string "staff_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gas_stations", force: :cascade do |t|
    t.string "name", null: false
    t.string "company_name"
    t.string "brand_name"
    t.string "shop_name"
    t.string "address"
    t.string "category"
    t.integer "status"
    t.string "memo_for_mapping"
    t.text "memo"
    t.string "date"
    t.string "open_hours"
    t.text "source_url"
    t.text "source_memo"
    t.string "city_code"
    t.string "prefecture"
    t.string "city"
    t.string "town"
    t.string "tel"
    t.float "latitude"
    t.float "longitude"
    t.datetime "source_confirmed_at"
    t.string "staff_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address"], name: "index_gas_stations_on_address"
    t.index ["name"], name: "index_gas_stations_on_name"
    t.index ["status"], name: "index_gas_stations_on_status"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "water_supply_points", force: :cascade do |t|
    t.string "name", null: false
    t.string "address"
    t.integer "status"
    t.text "memo_for_mapping"
    t.text "memo"
    t.string "date"
    t.string "open_hours"
    t.text "source_url"
    t.text "source_memo"
    t.string "city_code"
    t.string "prefecture"
    t.string "city"
    t.string "town"
    t.string "tel"
    t.float "latitude"
    t.float "longitude"
    t.datetime "source_confirmed_at"
    t.string "staff_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address"], name: "index_water_supply_points_on_address"
    t.index ["date"], name: "index_water_supply_points_on_date"
    t.index ["name"], name: "index_water_supply_points_on_name"
    t.index ["status"], name: "index_water_supply_points_on_status"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
