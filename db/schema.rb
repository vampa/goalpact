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

ActiveRecord::Schema.define(version: 20150127000706) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "charges", force: true do |t|
    t.integer  "amount"
    t.integer  "user_id"
    t.integer  "goal_id"
    t.integer  "charity_id"
    t.string   "transaction"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "charities", force: true do |t|
    t.string   "name"
    t.string   "blurb"
    t.string   "subdomain"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goals", force: true do |t|
    t.integer  "type"
    t.string   "name"
    t.datetime "event_date"
    t.integer  "charity_id"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "event_city"
    t.string   "event_state"
    t.text     "description"
    t.boolean  "first_time"
    t.integer  "target_time"
    t.integer  "step"
  end

  create_table "pact_charges", force: true do |t|
    t.integer  "pact_id"
    t.integer  "charge_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pacts", force: true do |t|
    t.integer  "amount"
    t.integer  "type"
    t.integer  "target"
    t.integer  "goal_id"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results", force: true do |t|
    t.integer  "time"
    t.integer  "month"
    t.integer  "year"
    t.boolean  "previous"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "twitter_id"
    t.string   "facebook_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
