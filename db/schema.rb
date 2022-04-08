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

ActiveRecord::Schema.define(version: 2022_04_08_124638) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "content_builder_categories", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "content_builder_images", force: :cascade do |t|
    t.string "image"
    t.bigint "content_builder_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["content_builder_id"], name: "index_content_builder_images_on_content_builder_id"
  end

  create_table "content_builders", force: :cascade do |t|
    t.string "title"
    t.string "written_by"
    t.datetime "date_publish"
    t.text "content"
    t.boolean "status", default: false
    t.string "slug"
    t.text "summary"
    t.bigint "content_builder_category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["content_builder_category_id"], name: "index_content_builders_on_content_builder_category_id"
  end

  add_foreign_key "content_builder_images", "content_builders"
  add_foreign_key "content_builders", "content_builder_categories"
end
