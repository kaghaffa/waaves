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

ActiveRecord::Schema.define(version: 20161126152653) do

  create_table "Comments", force: :cascade do |t|
    t.integer  "completedcollab_id"
    t.text     "comment"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "Likes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "completedcollab_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "chatfiles", force: :cascade do |t|
    t.integer  "request_id"
    t.text     "file_comment"
    t.string   "file"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "sender_id"
  end

  create_table "chats", force: :cascade do |t|
    t.text     "text"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "request_id"
    t.integer  "sender_id"
    t.integer  "receiver_id"
  end

  create_table "completedcollabs", force: :cascade do |t|
    t.integer  "request_id"
    t.string   "file"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "music_preferences", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "preference1"
    t.string   "preference2"
    t.string   "preference3"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "genreselect"
    t.boolean  "skillsearch_production"
    t.boolean  "skillsearch_vocals"
    t.boolean  "skillsearch_liveinstrumentation"
    t.boolean  "skillsearch_mixingandmastering"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "final_song_title"
  end

  create_table "selectedusers", force: :cascade do |t|
    t.integer  "selected_user_id"
    t.integer  "request_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "desired_skill"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
    t.string   "avatar_url"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "genre1"
    t.string   "genre2"
    t.string   "genre3"
    t.integer  "goals"
    t.integer  "experience"
    t.string   "soundcloudurl"
    t.string   "youtubeurl"
    t.string   "bandcampurl"
    t.string   "googledriveurl"
    t.string   "otherurl"
    t.boolean  "production"
    t.boolean  "vocals"
    t.boolean  "liveinstrumentation"
    t.boolean  "mixingandmastering"
    t.string   "similar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
