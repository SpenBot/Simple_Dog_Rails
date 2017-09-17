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

ActiveRecord::Schema.define(version: 20170915170342) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.bigint "dog_id"
    t.bigint "daycare_id"
    t.integer "day"
    t.integer "month"
    t.integer "year"
    t.integer "hour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["daycare_id"], name: "index_appointments_on_daycare_id"
    t.index ["dog_id"], name: "index_appointments_on_dog_id"
  end

  create_table "daycares", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.string "photo_url"
    t.string "owner"
    t.string "breed"
    t.string "weight"
    t.boolean "medical_check"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
