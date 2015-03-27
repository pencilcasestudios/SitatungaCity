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

ActiveRecord::Schema.define(version: 20150327084541) do

  create_table "housing_projects", force: :cascade do |t|
    t.string   "cover_image"
    t.string   "gps_coordinates"
    t.string   "name"
    t.string   "plot_layout_image"
    t.string   "plot_layout_image_dimensions"
    t.string   "state"
    t.string   "subdomain"
    t.text     "summary"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "plots", force: :cascade do |t|
    t.integer  "housing_project_id"
    t.integer  "user_id"
    t.boolean  "is_available"
    t.decimal  "area"
    t.decimal  "cash_price"
    t.decimal  "installment_amount"
    t.decimal  "term_deposit_amount"
    t.decimal  "total_installments"
    t.string   "beacon_code"
    t.string   "designation"
    t.string   "image_map_coordinates"
    t.string   "image_map_shape"
    t.string   "state"
    t.string   "street_address"
    t.text     "description"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "plots", ["housing_project_id"], name: "index_plots_on_housing_project_id"
  add_index "plots", ["user_id"], name: "index_plots_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "cell_phone_number"
    t.string   "email"
    t.string   "first_name"
    t.string   "language"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "password_digest"
    t.string   "role"
    t.string   "state"
    t.string   "time_zone"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
