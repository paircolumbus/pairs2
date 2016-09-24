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

ActiveRecord::Schema.define(version: 20160924135204) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.integer  "organization_id", null: false
    t.string   "name",            null: false
    t.datetime "date",            null: false
    t.datetime "start_time",      null: false
    t.datetime "end_time",        null: false
    t.integer  "organizer_id",    null: false
    t.integer  "status",          null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "description", null: false
    t.integer  "admin_id",    null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pairs", force: :cascade do |t|
    t.integer "event_id",             null: false
    t.integer "person_1",             null: false
    t.integer "person_2",             null: false
    t.integer "status",   default: 0
    t.index ["event_id"], name: "index_pairs_on_event_id", using: :btree
  end

  create_table "reservation_statuses", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.integer  "reservation_status_id"
    t.integer  "skill_id"
    t.integer  "experience_level"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["event_id"], name: "index_reservations_on_event_id", using: :btree
    t.index ["reservation_status_id"], name: "index_reservations_on_reservation_status_id", using: :btree
    t.index ["skill_id"], name: "index_reservations_on_skill_id", using: :btree
    t.index ["user_id"], name: "index_reservations_on_user_id", using: :btree
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",                          null: false
    t.string   "last_name",                           null: false
    t.string   "email",                  default: "", null: false
    t.string   "username",                            null: false
    t.integer  "skill_level",                         null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

end
