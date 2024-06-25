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

ActiveRecord::Schema[7.1].define(version: 2024_06_24_154046) do
  create_table "banners", force: :cascade do |t|
    t.string "imageURL", null: false
    t.integer "imageBannerCount", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "platforms", force: :cascade do |t|
    t.integer "number"
    t.string "name"
    t.string "icon"
    t.string "brandColor"
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

  create_table "user_platforms", force: :cascade do |t|
    t.integer "user_id"
    t.integer "platform_id"
    t.boolean "has_account", default: false
    t.boolean "is_broadcasting", default: false
    t.string "display_text_content"
    t.string "account_user_name"
    t.string "account_url"
    t.string "account_icon_image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["platform_id"], name: "index_user_platforms_on_platform_id"
    t.index ["user_id"], name: "index_user_platforms_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_meta_names_id"
    t.integer "user_platforms_id"
    t.string "hashTag"
    t.string "name"
    t.integer "userId"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hashTag"], name: "index_users_on_hashTag", unique: true
    t.index ["userId"], name: "index_users_on_userId", unique: true
    t.index ["user_meta_names_id"], name: "index_users_on_user_meta_names_id"
    t.index ["user_platforms_id"], name: "index_users_on_user_platforms_id"
  end

  add_foreign_key "user_meta_names", "users"
  add_foreign_key "user_platforms", "platforms"
  add_foreign_key "user_platforms", "users"
  add_foreign_key "users", "user_meta_names", column: "user_meta_names_id"
  add_foreign_key "users", "user_platforms", column: "user_platforms_id"
end
