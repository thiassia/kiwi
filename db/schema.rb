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

ActiveRecord::Schema.define(version: 20130917012949) do

  create_table "Adcategories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
    t.integer  "ancestry"
  end

  add_index "Adcategories", ["ancestry"], name: "index_Adcategories_on_ancestry"

  create_table "Ads", force: true do |t|
    t.string   "name"
    t.integer  "adcategory_id"
    t.date     "from_date"
    t.date     "to_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
    t.integer  "price"
    t.string   "contact_email"
    t.string   "contact_phone"
  end

  add_index "Ads", ["adcategory_id"], name: "index_ads_on_adcategory_id"

  create_table "Users", id: false, force: true do |t|
    t.string   "name",                   limit: nil
    t.string   "email",                              default: "", null: false
    t.string   "encrypted_password",                 default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "Users", ["email"], name: "index_users_on_email", unique: true
  add_index "Users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "subcategories", force: true do |t|
    t.integer  "adcategory_id"
    t.integer  "subcat_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
