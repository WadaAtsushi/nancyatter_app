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

ActiveRecord::Schema.define(version: 2021_08_05_235417) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appcategories", force: :cascade do |t|
    t.string "category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "nancyatterapp_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "post_id"
    t.integer "menbure_id"
    t.string "comment_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.string "menbure_id"
    t.string "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menburs", force: :cascade do |t|
    t.integer "nancyatterapp_id"
    t.integer "user_id"
    t.string "nickname"
    t.string "profile_image"
    t.string "profile"
    t.integer "del_flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nancyatterapps", force: :cascade do |t|
    t.string "app_name"
    t.string "introduction"
    t.string "loure"
    t.string "app_image"
    t.integer "user_id"
    t.integer "appcategory_id"
    t.string "feature_like"
    t.string "feature_comment"
    t.string "feature_category"
    t.string "feature_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "main_text"
  end

  create_table "postcategories", force: :cascade do |t|
    t.integer "nancyatterapp_id"
    t.string "category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.integer "user_id"
    t.integer "nancyatterapp_id"
    t.integer "postcategory_id"
    t.string "post_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "del_flag"
    t.integer "menbur_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "del_flag"
    t.string "password"
  end

end
