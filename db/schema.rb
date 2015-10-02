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

ActiveRecord::Schema.define(version: 20151001195100) do

  create_table "candidates", force: :cascade do |t|
    t.text     "name"
    t.text     "party"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "popcounters", id: false, force: :cascade do |t|
    t.integer  "candidate_id"
    t.integer  "AL",           default: 0
    t.integer  "AK",           default: 0
    t.integer  "AZ",           default: 0
    t.integer  "AR",           default: 0
    t.integer  "CA",           default: 0
    t.integer  "CO",           default: 0
    t.integer  "CT",           default: 0
    t.integer  "DE",           default: 0
    t.integer  "FL",           default: 0
    t.integer  "GA",           default: 0
    t.integer  "HI",           default: 0
    t.integer  "ID",           default: 0
    t.integer  "IL",           default: 0
    t.integer  "IN",           default: 0
    t.integer  "IA",           default: 0
    t.integer  "KS",           default: 0
    t.integer  "KY",           default: 0
    t.integer  "LA",           default: 0
    t.integer  "ME",           default: 0
    t.integer  "MD",           default: 0
    t.integer  "MA",           default: 0
    t.integer  "MI",           default: 0
    t.integer  "MN",           default: 0
    t.integer  "MS",           default: 0
    t.integer  "MO",           default: 0
    t.integer  "MT",           default: 0
    t.integer  "NE",           default: 0
    t.integer  "NV",           default: 0
    t.integer  "NH",           default: 0
    t.integer  "NJ",           default: 0
    t.integer  "NM",           default: 0
    t.integer  "NY",           default: 0
    t.integer  "NC",           default: 0
    t.integer  "ND",           default: 0
    t.integer  "OH",           default: 0
    t.integer  "OK",           default: 0
    t.integer  "OR",           default: 0
    t.integer  "PA",           default: 0
    t.integer  "RI",           default: 0
    t.integer  "SC",           default: 0
    t.integer  "SD",           default: 0
    t.integer  "TN",           default: 0
    t.integer  "TX",           default: 0
    t.integer  "UT",           default: 0
    t.integer  "VT",           default: 0
    t.integer  "VA",           default: 0
    t.integer  "WA",           default: 0
    t.integer  "WV",           default: 0
    t.integer  "WI",           default: 0
    t.integer  "WY",           default: 0
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "tweets", force: :cascade do |t|
    t.string   "username"
    t.text     "tweet"
    t.string   "location"
    t.string   "candidate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
