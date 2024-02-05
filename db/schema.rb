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

ActiveRecord::Schema[7.1].define(version: 2024_02_05_102704) do
  create_table "administrators", force: :cascade do |t|
    t.string "email_address"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delivery_destinations", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "addressee"
    t.string "delivery_postal_code"
    t.string "delivery_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_delivery_destinations_on_user_id"
  end

  create_table "japanese_swords", force: :cascade do |t|
    t.float "blade_length"
    t.float "curvature"
    t.float "width_at_the_hamachi"
    t.float "thickness_at_the_moto_kasane"
    t.float "wide_at_the_kissaki"
    t.float "thickness_at_the_saki_kasane"
    t.float "weight"
    t.string "nakago"
    t.string "guns_sword_registration_area"
    t.integer "guns_sword_registration_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kattyus", force: :cascade do |t|
    t.string "odoshiito"
    t.string "hachi"
    t.boolean "kabutodai"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "delivery_destination_id", null: false
    t.integer "product_id", null: false
    t.string "addressee"
    t.string "delivery_postal_code"
    t.string "delivery_address"
    t.string "payment_methods"
    t.integer "billing_amount"
    t.integer "shipping_fee"
    t.integer "order_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["delivery_destination_id"], name: "index_orders_on_delivery_destination_id"
    t.index ["product_id"], name: "index_orders_on_product_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "product_category_id", null: false
    t.string "product_name"
    t.integer "tax_excluded_price"
    t.string "description"
    t.integer "article"
    t.integer "appraisal_document"
    t.integer "country"
    t.integer "era"
    t.integer "era_name"
    t.integer "sign"
    t.integer "sales_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
  end

  create_table "tosogus", force: :cascade do |t|
    t.string "shape"
    t.boolean "in_paulownia_wood_box"
    t.float "length"
    t.float "width"
    t.float "thickness"
    t.float "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "family_name", null: false
    t.string "last_name", null: false
    t.string "family_name_furigana", null: false
    t.string "last_name_furigana", null: false
    t.string "email_address", null: false
    t.string "password_digest", null: false
    t.string "postal_code", null: false
    t.string "address", null: false
    t.boolean "account_status", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "delivery_destinations", "users"
  add_foreign_key "orders", "delivery_destinations"
  add_foreign_key "orders", "products"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "product_categories"
end
