# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160803164652) do

  create_table "africas", force: :cascade do |t|
    t.string   "img"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "americas", force: :cascade do |t|
    t.string   "img2"
    t.string   "title2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "asia1s", force: :cascade do |t|
    t.string   "asiaimg"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "europes", force: :cascade do |t|
    t.string   "title1"
    t.string   "img1"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "img3"
    t.string   "title3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "replies", force: :cascade do |t|
    t.string   "content"
    t.integer  "score"
    t.string   "writing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "twitter_comments", force: :cascade do |t|
    t.string   "twitter_id"
    t.string   "twitter_comment"
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "twitters", force: :cascade do |t|
    t.string   "twitter_title"
    t.string   "twitter_content"
    t.string   "twitter_name"
    t.integer  "user_id"
    t.string   "user"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "writings", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.integer  "user_id"
    t.string   "user"
    t.string   "post_id"
    t.string   "america_id"
    t.string   "europe_id"
    t.string   "africa_id"
    t.integer  "number",     default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
