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

ActiveRecord::Schema.define(version: 20150521231539) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "inboxes", force: :cascade do |t|
    t.string   "subject"
    t.string   "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "admin_id"
    t.string   "user_id"
  end

  add_index "inboxes", ["admin_id"], name: "index_inboxes_on_admin_id"
  add_index "inboxes", ["user_id"], name: "index_inboxes_on_user_id"

  create_table "loads", force: :cascade do |t|
    t.string   "range"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loads_publications", id: false, force: :cascade do |t|
    t.integer "publication_id"
    t.integer "load_id"
  end

  add_index "loads_publications", ["load_id"], name: "index_loads_publications_on_load_id"
  add_index "loads_publications", ["publication_id"], name: "index_loads_publications_on_publication_id"

  create_table "loads_users", id: false, force: :cascade do |t|
    t.integer "load_id"
    t.integer "user_id"
  end

  create_table "publications", force: :cascade do |t|
    t.string   "title"
    t.string   "day_pickup"
    t.string   "time_pickup"
    t.string   "day_delivery"
    t.string   "time_delivery"
    t.string   "origin"
    t.string   "destiny"
    t.text     "description"
    t.string   "estimated_price"
    t.string   "final_price"
    t.string   "status"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
  end

  add_index "publications", ["user_id"], name: "index_publications_on_user_id"

  create_table "publications_services", id: false, force: :cascade do |t|
    t.integer "publication_id"
    t.integer "service_id"
  end

  add_index "publications_services", ["publication_id"], name: "index_publications_services_on_publication_id"
  add_index "publications_services", ["service_id"], name: "index_publications_services_on_service_id"

  create_table "publications_trucks", id: false, force: :cascade do |t|
    t.integer "publication_id"
    t.integer "truck_id"
  end

  add_index "publications_trucks", ["publication_id"], name: "index_publications_trucks_on_publication_id"
  add_index "publications_trucks", ["truck_id"], name: "index_publications_trucks_on_truck_id"

  create_table "ratings", force: :cascade do |t|
    t.integer  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings_users", id: false, force: :cascade do |t|
    t.integer "rating_id"
    t.integer "user_id"
  end

  create_table "sales", force: :cascade do |t|
    t.string   "date_sale"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "admin_id"
    t.string   "publication_id"
  end

  add_index "sales", ["admin_id"], name: "index_sales_on_admin_id"
  add_index "sales", ["publication_id"], name: "index_sales_on_publication_id"

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services_users", id: false, force: :cascade do |t|
    t.integer "service_id"
    t.integer "user_id"
  end

  create_table "trucks", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trucks_users", id: false, force: :cascade do |t|
    t.integer "truck_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "avatar"
    t.string   "phone"
    t.string   "city"
    t.string   "state"
    t.string   "street"
    t.integer  "number_in"
    t.integer  "number_out"
    t.string   "colony"
    t.integer  "postal"
    t.string   "company"
    t.string   "rfc"
    t.text     "description"
    t.boolean  "mails_sent",             default: false
    t.string   "role"
    t.string   "celphone"
    t.string   "phone_extra"
    t.string   "phone_extra_two"
    t.string   "city_origin"
    t.string   "state_origin"
    t.string   "update_profile",         default: "0"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
