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

ActiveRecord::Schema.define(version: 20130529215416) do

  create_table "albums", id: false, force: true do |t|
    t.string   "uuid",       limit: 36
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token",      limit: 40
  end

  add_index "albums", ["token"], name: "index_albums_on_token"

  create_table "snapshots", force: true do |t|
    t.string   "content_file_name"
    t.string   "content_content_type"
    t.integer  "content_file_size"
    t.datetime "content_updated_at"
    t.text     "comment"
    t.string   "album_id",             limit: 36
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end