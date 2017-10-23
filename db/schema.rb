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

ActiveRecord::Schema.define(version: 20171023024048) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.integer "price_offer"
    t.text "specs"
    t.text "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "producer_id"
    t.bigint "order_id"
    t.index ["order_id"], name: "index_applications_on_order_id"
    t.index ["producer_id"], name: "index_applications_on_producer_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "designers", force: :cascade do |t|
    t.text "email"
    t.text "password"
    t.text "company_name"
    t.text "website"
    t.text "description"
    t.text "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.date "payment_due_date"
    t.string "payment_status"
    t.float "price"
    t.string "order_status"
    t.date "due_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "application_id"
    t.bigint "order_id"
    t.string "tracking_number"
    t.index ["application_id"], name: "index_invoices_on_application_id"
    t.index ["order_id"], name: "index_invoices_on_order_id"
  end

  create_table "items", force: :cascade do |t|
    t.text "name"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "order_id"
    t.index ["order_id"], name: "index_items_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.date "max_due_date"
    t.text "specs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "designer_id"
    t.bigint "category_id"
    t.integer "base_price"
    t.index ["category_id"], name: "index_orders_on_category_id"
    t.index ["designer_id"], name: "index_orders_on_designer_id"
  end

  create_table "producers", force: :cascade do |t|
    t.text "email"
    t.text "password"
    t.text "company_name"
    t.text "website"
    t.text "description"
    t.text "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "applications", "orders"
  add_foreign_key "applications", "producers"
  add_foreign_key "invoices", "applications"
  add_foreign_key "invoices", "orders"
  add_foreign_key "items", "orders"
  add_foreign_key "orders", "categories"
  add_foreign_key "orders", "designers"
end
