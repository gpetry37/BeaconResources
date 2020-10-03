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

ActiveRecord::Schema.define(version: 2020_10_03_204522) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addsuggestions", force: :cascade do |t|
    t.integer "resouce_id"
    t.text "description"
    t.datetime "created_at"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "counties", force: :cascade do |t|
    t.string "name", limit: 12, null: false
  end

  create_table "removesuggestions", force: :cascade do |t|
    t.integer "resouce_id"
    t.text "description"
    t.datetime "created_at"
  end

  create_table "resources", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "town"
    t.string "state"
    t.integer "zip_code"
    t.integer "county_id"
    t.integer "phone"
    t.integer "filter"
  end

end
