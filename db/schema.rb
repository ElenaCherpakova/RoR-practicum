# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_03_22_022831) do
  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collections", force: :cascade do |t|
    t.string "name", null: false
    t.integer "user_id", null: false
    t.integer "city_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_collections_on_city_id"
    t.index ["user_id"], name: "index_collections_on_user_id"
  end

  create_table "collections_places", id: false, force: :cascade do |t|
    t.integer "collection_id", null: false
    t.integer "place_id", null: false
    t.index ["collection_id", "place_id"], name: "index_collections_places_on_collection_id_and_place_id", unique: true
    t.index ["collection_id"], name: "index_collections_places_on_collection_id"
    t.index ["place_id"], name: "index_collections_places_on_place_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "place_type"
    t.text "description"
    t.integer "rating"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "city_id", null: false
    t.index ["city_id"], name: "index_places_on_city_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "collections", "cities"
  add_foreign_key "collections", "users"
  add_foreign_key "collections_places", "collections"
  add_foreign_key "collections_places", "places"
  add_foreign_key "places", "cities"
end
