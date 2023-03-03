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

ActiveRecord::Schema.define(version: 2023_02_20_154612) do

  create_table "categories", charset: "latin1", force: :cascade do |t|
    t.string "name"
    t.text "description"
  end

  create_table "clients", charset: "latin1", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
  end

  create_table "orders", charset: "latin1", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "shipped_at"
    t.string "status"
  end

  create_table "orders_items", charset: "latin1", force: :cascade do |t|
    t.integer "quantity"
    t.integer "item_price"
  end

  create_table "products", charset: "latin1", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "price"
  end

end
