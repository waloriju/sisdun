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

ActiveRecord::Schema.define(version: 20131016091648) do

  create_table "addresses", force: true do |t|
    t.string   "address"
    t.string   "complement"
    t.string   "number"
    t.string   "cep"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["city_id"], name: "index_addresses_on_city_id"

  create_table "cities", force: true do |t|
    t.string   "name"
    t.string   "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id"

  create_table "contacts", force: true do |t|
    t.string   "phone1"
    t.string   "phone2"
    t.string   "phone3"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "status",        default: "ativo"
    t.integer  "capacity_id"
    t.string   "capacity_type"
    t.integer  "address_id"
    t.integer  "contact_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "people", ["address_id"], name: "index_people_on_address_id"
  add_index "people", ["contact_id"], name: "index_people_on_contact_id"

  create_table "states", force: true do |t|
    t.string   "abbreviation"
    t.string   "name"
    t.integer  "capital_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "states", ["capital_id"], name: "index_states_on_capital_id"

end
