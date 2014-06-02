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

ActiveRecord::Schema.define(version: 20140602234958) do

  create_table "aliases", force: true do |t|
    t.string "other_name"
  end

  create_table "dances", force: true do |t|
    t.string  "move"
    t.integer "alias_id"
    t.text    "definition"
    t.string  "picture_url"
    t.string  "video_url"
    t.integer "difficulty"
    t.string  "genre"
    t.string  "category"
    t.integer "page_count"
  end

  create_table "users", force: true do |t|
    t.string "username"
    t.string "password"
    t.string "name"
  end

end
