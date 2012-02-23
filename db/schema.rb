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

ActiveRecord::Schema.define(:version => 20120223172103) do

  create_table "appointments", :force => true do |t|
    t.integer  "case_id"
    t.integer  "clinician_id"
    t.datetime "date_and_time"
    t.string   "appointment_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cases", :force => true do |t|
    t.integer  "user_id"
    t.integer  "clinician_id"
    t.integer  "referrer_id"
    t.boolean  "status",       :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cases_patients", :id => false, :force => true do |t|
    t.integer "case_id"
    t.integer "patient_id"
  end

  create_table "clinicians", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "user_id"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "history_females", :force => true do |t|
    t.integer  "patient_id"
    t.integer  "pregnancies"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "history_males", :force => true do |t|
    t.integer  "patient_id"
    t.boolean  "prior_infertility"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "case_id"
    t.date     "date_of_birth"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "sex"
    t.string   "ethnicity"
    t.string   "marital_status"
    t.string   "occupation"
  end

  create_table "referrers", :force => true do |t|
    t.integer  "case_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "practice_name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin_account",      :default => false
    t.boolean  "patient_account",    :default => false
    t.boolean  "clinician_account",  :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
