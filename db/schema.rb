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

ActiveRecord::Schema.define(version: 20141027021104) do

  create_table "buttsniffs", force: true do |t|
    t.integer  "dingo_id"
    t.integer  "buttsniffee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dingos", force: true do |t|
    t.string   "name"
    t.string   "habitat"
    t.string   "password"
    t.string   "photo_url"
    t.integer  "age"
    t.text     "about"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "snarls", force: true do |t|
    t.integer  "dingo_id"
    t.string   "post"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
