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

ActiveRecord::Schema.define(version: 2020_06_30_042009) do

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bad_reports", force: :cascade do |t|
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "User_id"
    t.integer "Communicate_id"
    t.index ["Communicate_id"], name: "index_bad_reports_on_Communicate_id"
    t.index ["User_id"], name: "index_bad_reports_on_User_id"
  end

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.decimal "rut"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "communicates", force: :cascade do |t|
    t.decimal "indoors_quantity"
    t.decimal "waiting_line_quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "Shop_id"
    t.integer "User_id"
    t.index ["Shop_id"], name: "index_communicates_on_Shop_id"
    t.index ["User_id"], name: "index_communicates_on_User_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "location"
    t.time "opening_schedule"
    t.time "closing_schedule"
    t.string "shop_type"
    t.decimal "dimension"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "Business_id"
    t.index ["Business_id"], name: "index_shops_on_Business_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "name"
    t.datetime "birth_date"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bad_reports", "Communicates"
  add_foreign_key "bad_reports", "Users"
  add_foreign_key "communicates", "Shops"
  add_foreign_key "communicates", "Users"
  add_foreign_key "shops", "Businesses"
end
