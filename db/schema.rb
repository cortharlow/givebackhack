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

ActiveRecord::Schema.define(version: 20160221025030) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "description"
    t.string "industry"
    t.string "email"
    t.string "phone"
    t.string "website"
  end

  create_table "interests", force: :cascade do |t|
    t.integer "user_id"
    t.boolean "technology",   default: false
    t.boolean "medical",      default: false
    t.boolean "construction", default: false
    t.boolean "create",       default: false
    t.boolean "culinary",     default: false
    t.boolean "industrial",   default: false
    t.boolean "mechanical",   default: false
  end

  create_table "openings", force: :cascade do |t|
    t.integer  "company_id"
    t.string   "title"
    t.string   "industry"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "about"
    t.string   "skills"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
