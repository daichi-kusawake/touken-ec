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

ActiveRecord::Schema[7.1].define(version: 2024_01_24_145026) do
  create_table "administrators", force: :cascade do |t|
    t.string "email_address"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appraisal_documents", force: :cascade do |t|
    t.string "appraisal_document_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "article_categories", force: :cascade do |t|
    t.string "article_category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "country_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "family_name", null: false
    t.string "last_name", null: false
    t.string "family_name_furigana", null: false
    t.string "last_name_furigana", null: false
    t.string "email_address", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delivery_destinations", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.string "addressee"
    t.string "delivery_postal_code"
    t.string "delivery_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_delivery_destinations_on_customer_id"
  end

  create_table "eras", force: :cascade do |t|
    t.string "era"
    t.string "era_name"
    t.date "ad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "japanese_sword_categories", force: :cascade do |t|
    t.string "japanese_sword_category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "japanese_swords", force: :cascade do |t|
    t.integer "japanese_sword_category_id", null: false
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
    t.index ["japanese_sword_category_id"], name: "index_japanese_swords_on_japanese_sword_category_id"
  end

  create_table "kattyu_categories", force: :cascade do |t|
    t.string "kattyu_category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kattyus", force: :cascade do |t|
    t.integer "kattyu_category_id", null: false
    t.string "odoshiito"
    t.string "hachi"
    t.boolean "kabutodai"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kattyu_category_id"], name: "index_kattyus_on_kattyu_category_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.string "addressee"
    t.string "delivery_postal_code"
    t.string "delivery_address"
    t.string "payment_methods"
    t.integer "billing_amount"
    t.integer "shipping_fee"
    t.integer "order_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "product_orders", force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "order_id", null: false
    t.string "tax_included_price"
    t.integer "order_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_product_orders_on_order_id"
    t.index ["product_id"], name: "index_product_orders_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.integer "tax_excluded_price"
    t.string "description"
    t.integer "article_category_id", null: false
    t.integer "article_id"
    t.integer "appraisal_document_id", null: false
    t.integer "country_id", null: false
    t.integer "era_id", null: false
    t.integer "sign_id", null: false
    t.integer "japanese_sword_id", null: false
    t.integer "sales_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appraisal_document_id"], name: "index_products_on_appraisal_document_id"
    t.index ["article_category_id"], name: "index_products_on_article_category_id"
    t.index ["country_id"], name: "index_products_on_country_id"
    t.index ["era_id"], name: "index_products_on_era_id"
    t.index ["japanese_sword_id"], name: "index_products_on_japanese_sword_id"
    t.index ["sign_id"], name: "index_products_on_sign_id"
  end

  create_table "signs", force: :cascade do |t|
    t.string "sign_person"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tosogu_categories", force: :cascade do |t|
    t.string "tosogu_category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tosogus", force: :cascade do |t|
    t.integer "tosogu_category_id", null: false
    t.string "shape"
    t.boolean "in_paulownia_wood_box"
    t.float "length"
    t.float "width"
    t.float "thickness"
    t.float "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tosogu_category_id"], name: "index_tosogus_on_tosogu_category_id"
  end

  add_foreign_key "delivery_destinations", "customers"
  add_foreign_key "japanese_swords", "japanese_sword_categories"
  add_foreign_key "kattyus", "kattyu_categories"
  add_foreign_key "orders", "customers"
  add_foreign_key "product_orders", "orders"
  add_foreign_key "product_orders", "products"
  add_foreign_key "products", "appraisal_documents"
  add_foreign_key "products", "article_categories"
  add_foreign_key "products", "countries"
  add_foreign_key "products", "eras"
  add_foreign_key "products", "japanese_swords"
  add_foreign_key "products", "signs"
  add_foreign_key "tosogus", "tosogu_categories"
end
