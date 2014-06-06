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

ActiveRecord::Schema.define(version: 20140606075538) do

  create_table "articles", force: true do |t|
    t.integer  "user_id"
    t.integer  "board_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "articles", ["board_id"], name: "index_articles_on_board_id", using: :btree
  add_index "articles", ["user_id"], name: "index_articles_on_user_id", using: :btree

  create_table "boards", force: true do |t|
    t.string   "title"
    t.text     "intro"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "boards", ["user_id"], name: "index_boards_on_user_id", using: :btree

  create_table "hoges", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.text     "name"
    t.integer  "user_id"
    t.text     "password"
    t.text     "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["user_id"], name: "index_users_on_user_id", using: :btree

end