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

ActiveRecord::Schema.define(version: 4) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "counties", force: :cascade do |t|
    t.string "name", limit: 12, null: false
  end

  create_table "resources", force: :cascade do |t|
    t.string "name", null: false
    t.string "address"
    t.string "town"
    t.string "zip_code"
    t.integer "county_id"
    t.bigint "phone"
    t.integer "category_id"
  end

  create_table "suggestions", force: :cascade do |t|
    t.string "name"
    t.string "s_type"
    t.string "location"
    t.text "description"
    t.datetime "created_at"
  end

end
