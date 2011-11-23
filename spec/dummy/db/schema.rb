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

ActiveRecord::Schema.define(:version => 20111122044147) do

  create_table "advisor_searches", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "advisors", :force => true do |t|
    t.integer  "investment_company_id"
    t.string   "first_name",            :null => false
    t.string   "last_name",             :null => false
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.string   "crd_num"
    t.string   "sec_num"
    t.string   "reg_status"
    t.datetime "reg_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "investment_companies", :force => true do |t|
    t.string   "business_name"
    t.string   "legal_name"
    t.string   "card_number"
    t.string   "sec_number"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state_abbr"
    t.string   "zip_code"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.string   "website"
    t.string   "registration_status"
    t.date     "registration_effective_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
