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

ActiveRecord::Schema.define(version: 20161123053244) do

  create_table "checkins", force: :cascade do |t|
    t.integer  "numberofperson"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "status",         default: 0
    t.string   "telephone"
    t.index ["user_id"], name: "index_checkins_on_user_id"
  end

  create_table "hotels", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "lineitem_details", force: :cascade do |t|
    t.string   "nameguest"
    t.string   "identification"
    t.string   "address"
    t.integer  "gender"
    t.integer  "lineitem_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["lineitem_id"], name: "index_lineitem_details_on_lineitem_id"
  end

  create_table "lineitems", force: :cascade do |t|
    t.integer  "room_code"
    t.datetime "fromdate"
    t.datetime "startdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "checkin_id"
    t.index ["checkin_id"], name: "index_lineitems_on_checkin_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.integer  "role"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "room_code"
    t.string   "avatar"
    t.integer  "status"
    t.integer  "bed_quantity"
    t.integer  "roomtype_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["roomtype_id"], name: "index_rooms_on_roomtype_id"
  end

  create_table "roomtypes", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "hotel_id"
    t.index ["hotel_id"], name: "index_roomtypes_on_hotel_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "permission_id"
    t.index ["permission_id"], name: "index_users_on_permission_id"
  end

end
