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

ActiveRecord::Schema.define(version: 2018_11_13_232817) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addiction_occurrences", force: :cascade do |t|
    t.integer "user_id"
    t.integer "addiction_id"
    t.integer "location"
    t.string "circumstance"
    t.integer "amount"
    t.decimal "cost"
    t.boolean "craving"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addictions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "circumstances", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
