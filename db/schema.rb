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

ActiveRecord::Schema.define(version: 2021_07_20_210922) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.string "app_name"
    t.integer "admin_id" # adminは以下のuser_idでいいのでは？
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.integer "app_id"
    t.string "category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
  # user_idも変えたほうがいい。フォローしてくれる人のIDにする
  create_table "comments", force: :cascade do |t|
    t.integer "post_id"
    t.integer "user_id"
    t.string "comment_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
  # user_idも変えたほうがいい。フォローしてくれる人のIDにする
  create_table "likes", force: :cascade do |t|
    t.string "user_id"
    t.string "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
  # user_idも変えたほうがいい。フォローしてくれる人のIDにする
  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.integer "user_id"
<<<<<<< Updated upstream
    t.integer "app_id"
    t.integer "category_id"
    t.string "image"
=======
    t.integer "nancyatterapp_id"
    t.integer "postcategory_id"
    t.string "post_image"
    t.integer "menbur_id"
>>>>>>> Stashed changes
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "del_flag"
  end
  # SNSをフォローしてくれる or 登録してくれるユーザーテーブルが必要?
  # name
  # email
  # password_digest
  # app_id(SNS)
  # del_flg

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password" # password_digestがあれば、passwordカラムは不要。 下記でpassword, password_confirmationがある。
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "del_flag"
  end

end
