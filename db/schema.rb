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

ActiveRecord::Schema.define(version: 20141208062549) do

  create_table "bookmark_topics", force: true do |t|
    t.integer  "bookmark_id"
    t.integer  "topic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bookmark_topics", ["bookmark_id"], name: "index_bookmark_topics_on_bookmark_id"

  create_table "bookmarks", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.integer  "user_id"
    t.integer  "topic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bookmarks", ["topic_id"], name: "index_bookmarks_on_topic_id"

  create_table "likes", force: true do |t|
    t.integer  "bookmark_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                default: "",    null: false
    t.string   "encrypted_password",   default: "",    null: false
    t.datetime "remember_created_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "image"
    t.boolean  "email_likes",          default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
