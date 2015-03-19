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

ActiveRecord::Schema.define(version: 20150313071858) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role",                   limit: 255
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "cities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "state_id",   limit: 4
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id", using: :btree

  create_table "inboxes", force: :cascade do |t|
    t.string   "subject",    limit: 255
    t.string   "message",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "admin_id",   limit: 255
    t.string   "user_id",    limit: 255
  end

  add_index "inboxes", ["admin_id"], name: "index_inboxes_on_admin_id", using: :btree
  add_index "inboxes", ["user_id"], name: "index_inboxes_on_user_id", using: :btree

  create_table "loads", force: :cascade do |t|
    t.string   "range",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "publications", force: :cascade do |t|
    t.string   "title",           limit: 255
    t.string   "day_pickup",      limit: 255
    t.string   "time_pickup",     limit: 255
    t.string   "day_delivery",    limit: 255
    t.string   "time_delivery",   limit: 255
    t.text     "description",     limit: 65535
    t.string   "estimated_price", limit: 255
    t.string   "final_price",     limit: 255
    t.string   "status",          limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "user_id",         limit: 4
  end

  add_index "publications", ["user_id"], name: "index_publications_on_user_id", using: :btree

  create_table "ratings", force: :cascade do |t|
    t.integer  "value",      limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "sales", force: :cascade do |t|
    t.string   "date_sale",      limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "admin_id",       limit: 255
    t.string   "publication_id", limit: 255
  end

  add_index "sales", ["admin_id"], name: "index_sales_on_admin_id", using: :btree
  add_index "sales", ["publication_id"], name: "index_sales_on_publication_id", using: :btree

  create_table "services", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "trucks", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "",    null: false
    t.string   "encrypted_password",     limit: 255,   default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.string   "avatar",                 limit: 255
    t.string   "phone",                  limit: 255
    t.string   "street",                 limit: 255
    t.string   "colony",                 limit: 255
    t.integer  "postal",                 limit: 4
    t.string   "company",                limit: 255
    t.string   "rfc",                    limit: 255
    t.text     "description",            limit: 65535
    t.boolean  "mails_sent",             limit: 1,     default: false
    t.string   "role",                   limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
