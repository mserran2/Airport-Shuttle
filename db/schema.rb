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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121004142843) do

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", :force => true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "email"
    t.string   "phone"
    t.integer  "shuttle_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shuttles", :force => true do |t|
    t.time     "depart"
    t.time     "arrive"
    t.date     "date"
    t.integer  "shuttle_number"
    t.integer  "seats"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trip_segments", :force => true do |t|
    t.integer  "reservation_id"
    t.integer  "shuttle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
