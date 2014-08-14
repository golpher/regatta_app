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

ActiveRecord::Schema.define(version: 20140814015044) do

  create_table "boat_types", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.decimal  "standard_hcp"
  end

  create_table "boats", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sail_number"
    t.string   "name"
    t.integer  "boat_types_id"
    t.integer  "sail_id"
  end

  create_table "clubs", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "address"
    t.integer  "users_id"
  end

  create_table "demo_1s", force: true do |t|
    t.string   "new_demo"
    t.integer  "new_demo_1"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "demo_as", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "demo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "demos", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "location"
    t.integer  "clubs_id"
    t.integer  "races_id"
  end

  create_table "race_types", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "races", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "boats_id"
    t.integer  "clubs_id"
    t.integer  "race_types_id"
    t.date     "start_date"
    t.time     "start_time"
    t.date     "finish_date"
    t.time     "finish_time"
    t.decimal  "hcp_applied"
  end

  create_table "sailors", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "skipper"
    t.string   "crew"
  end

  create_table "samples", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "demo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.string   "salt"
  end

end
