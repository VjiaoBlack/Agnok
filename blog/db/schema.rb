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

ActiveRecord::Schema.define(version: 20140822015013) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "forum_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["forum_id"], name: "index_categories_on_forum_id"

  create_table "comments", force: true do |t|
    t.text     "body"
    t.integer  "discussion_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["discussion_id"], name: "index_comments_on_discussion_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "discussions", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "topic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "discussions", ["topic_id"], name: "index_discussions_on_topic_id"

  create_table "forums", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "topics", ["category_id"], name: "index_topics_on_category_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
