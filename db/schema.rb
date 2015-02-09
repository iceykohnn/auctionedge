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

ActiveRecord::Schema.define(version: 20150207211411) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auctions", force: true do |t|
    t.string   "auction_name"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stagings", force: true do |t|
    t.string   "auction_name"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.integer  "vehicle_year"
    t.string   "vehicle_make"
    t.string   "vehicle_model"
    t.integer  "vehicle_stock_number"
    t.integer  "winning_bid"
    t.integer  "seller_payout"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicle_auto_auctions", force: true do |t|
    t.string   "auction_name"
    t.integer  "auction_id"
    t.integer  "vehicle_id"
    t.integer  "winning_bid"
    t.integer  "seller_payout"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicles", force: true do |t|
    t.integer  "vehicle_auto_auction_id"
    t.string   "vehicle_make"
    t.string   "vehicle_year"
    t.string   "vehicle_model"
    t.string   "vehicle_stock_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
