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

ActiveRecord::Schema.define(version: 2019_10_03_232908) do

  create_table "follows", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followee_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["follower_id", "followee_id"], name: "index_follows_on_follower_id_and_followee_id", unique: true
  end

  create_table "posts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "preference_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "comment"
  end

  create_table "preferences", force: :cascade do |t|
    t.string "name"
    t.string "image"
  end

  create_table "profile_comments", force: :cascade do |t|
    t.integer "commenter_id"
    t.integer "profile_id"
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_preferences", force: :cascade do |t|
    t.integer "user_id"
    t.integer "preference_id"
    t.index ["preference_id"], name: "index_user_preferences_on_preference_id"
    t.index ["user_id"], name: "index_user_preferences_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "name"
    t.integer "age"
    t.string "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "image"
  end

  add_foreign_key "user_preferences", "preferences"
  add_foreign_key "user_preferences", "users"
end
