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

ActiveRecord::Schema[7.1].define(version: 2024_06_24_154047) do
  create_table "banners", force: :cascade do |t|
    t.string "imageURL", null: false
    t.integer "imageBannerCount", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "platforms", force: :cascade do |t|
    t.integer "user_platforms_id"
    t.integer "platformId", null: false
    t.string "platformName"
    t.string "icon"
    t.string "imageURL"
    t.string "brandColor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_platforms_id"], name: "index_platforms_on_user_platforms_id"
  end

  create_table "user_meta_names", force: :cascade do |t|
    t.integer "userId", null: false
    t.string "userMetaName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["userId"], name: "index_user_meta_names_on_userId"
  end

  create_table "user_platforms", force: :cascade do |t|
    t.integer "userId", null: false
    t.integer "itemId"
    t.integer "platformId", null: false
    t.string "platformName", null: false
    t.string "accountUserId"
    t.string "accountUserName"
    t.string "accountIconImageUrl"
    t.string "accountUserUrl"
    t.string "accountUserSubText"
    t.boolean "hasAccount"
    t.boolean "isBroadCasting"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "userId", null: false
    t.string "hashtag"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["userId"], name: "index_users_on_userId", unique: true
  end

  add_foreign_key "platforms", "user_platforms", column: "user_platforms_id"
  add_foreign_key "user_meta_names", "users", column: "userId", primary_key: "userId"
end
