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

ActiveRecord::Schema.define(version: 2020_11_11_212438) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

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
    t.string "city"
    t.string "county"
    t.text "description"
    t.datetime "created_at"
  end

end
