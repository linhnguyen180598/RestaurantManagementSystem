# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_05_232553) do

  create_table "bills", force: :cascade do |t|
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cashflows", force: :cascade do |t|
    t.decimal "bill_total"
    t.decimal "cost_total"
    t.decimal "net_profit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dish_details", force: :cascade do |t|
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.integer "category"
    t.decimal "price"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.decimal "quantity"
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "guest_number"
    t.datetime "book_time"
    t.integer "reservation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reservation_id"], name: "index_reservations_on_reservation_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.float "hour_worked"
    t.decimal "pay_rate"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tables", force: :cascade do |t|
    t.integer "capacity"
    t.boolean "reserved", default: false
    t.string "table_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["table_number"], name: "index_tables_on_table_number"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "phone"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email"
  end

  create_table "utilities", force: :cascade do |t|
    t.datetime "time"
    t.decimal "water"
    t.decimal "eletricity"
    t.decimal "rent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
