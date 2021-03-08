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

ActiveRecord::Schema.define(version: 2021_03_07_204148) do

  create_table "image_tags", force: :cascade do |t|
    t.integer "tag_id", null: false
    t.integer "image_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["image_id"], name: "index_image_tags_on_image_id"
    t.index ["tag_id"], name: "index_image_tags_on_tag_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "price"
    t.string "url"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_images_on_user_id"
  end

  create_table "order_images", force: :cascade do |t|
    t.integer "quantity"
    t.integer "image_id", null: false
    t.integer "order_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["image_id"], name: "index_order_images_on_image_id"
    t.index ["order_id"], name: "index_order_images_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.boolean "ordered"
    t.string "payment_method"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "image_tags", "images"
  add_foreign_key "image_tags", "tags"
  add_foreign_key "images", "users"
  add_foreign_key "order_images", "images"
  add_foreign_key "order_images", "orders"
  add_foreign_key "orders", "users"
end
