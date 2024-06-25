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

ActiveRecord::Schema[7.1].define(version: 2024_06_24_154321) do
  create_table "banners", force: :cascade do |t|
    t.string "imageURL", null: false
    t.integer "imageBannerCount", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "platforms", force: :cascade do |t|
    t.integer "number", null: false
    t.string "name", null: false
    t.string "icon", null: false
    t.string "brandColor", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["number"], name: "index_platforms_on_number", unique: true
  end

  create_table "user_meta_names", force: :cascade do |t|
    t.integer "user_id"
    t.string "meta_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_meta_names_on_user_id"
  end

  create_table "user_platform_data", force: :cascade do |t|
    t.integer "user_id"
    t.integer "user_platform_id"
    t.boolean "has_account"
    t.boolean "is_broadcasting"
    t.string "display_text_content"
    t.string "account_user_name"
    t.string "account_url"
    t.string "account_icon_image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_platform_data_on_user_id"
    t.index ["user_platform_id"], name: "index_user_platform_data_on_user_platform_id"
  end

  create_table "user_platforms", force: :cascade do |t|
    t.string "platform_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "userId", null: false
    t.string "hashTag", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hashTag"], name: "index_users_on_hashTag", unique: true
    t.index ["userId"], name: "index_users_on_userId", unique: true
  end

  add_foreign_key "user_meta_names", "users"
  add_foreign_key "user_platform_data", "user_platforms"
  add_foreign_key "user_platform_data", "users"
end
