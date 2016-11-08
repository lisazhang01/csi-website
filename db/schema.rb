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

ActiveRecord::Schema.define(version: 20161107101319) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string   "title"
    t.date     "begin_date"
    t.date     "end_date"
    t.integer  "capacity"
    t.text     "location"
    t.text     "description"
    t.text     "syllabus"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.text     "address"
    t.integer  "mobile_phone"
    t.integer  "home_phone"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.integer  "mobile_phone"
    t.integer  "home_phone"
    t.text     "address"
    t.text     "current_school_name"
    t.string   "emergency_contact_name"
    t.string   "emergency_contact_relationship"
    t.integer  "emergency_contact_number"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "employee_id"
    t.integer  "mobile_phone"
    t.integer  "home_phone"
    t.text     "address"
    t.text     "bio"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
