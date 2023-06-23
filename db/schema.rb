# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_23_034630) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string "contact_name"
    t.string "contact_phone"
    t.string "contact_mail"
    t.string "contact_school"
    t.string "contact_grade"
    t.string "contact_division"
    t.string "contact_shift"
    t.string "contact_school_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "referrals", force: :cascade do |t|
    t.string "referral_name"
    t.string "referral_phone"
    t.string "referral_school"
    t.string "referral_grade"
    t.string "referral_division"
    t.string "referral_shift"
    t.string "referral_school_location"
    t.string "referrer_name"
    t.string "referrer_phone"
    t.string "referrer_location"
    t.string "referrer_school"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "school_2_promoters", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "promoter_name"
    t.datetime "promotion_date", precision: nil
    t.string "phone"
    t.string "school"
    t.string "location"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.string "name"
    t.string "grade"
    t.string "division"
    t.string "shift"
    t.string "relationship"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "school_promoters", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "promoter_name"
    t.datetime "promotion_date", precision: nil
    t.string "phone"
    t.string "school"
    t.string "location"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.string "name"
    t.string "grade"
    t.string "division"
    t.string "shift"
    t.string "relationship"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "observations"
    t.string "name2"
    t.string "name3"
    t.string "name4"
    t.string "name5"
    t.string "phone2"
    t.string "phone3"
    t.string "phone4"
    t.string "phone5"
    t.string "relationship2"
    t.string "relationship3"
    t.string "relationship4"
    t.string "relationship5"
  end

  create_table "second_contacts", force: :cascade do |t|
    t.string "second_contact_name"
    t.string "second_contact_phone"
    t.string "second_contact_mail"
    t.string "second_contact_school"
    t.string "second_contact_grade"
    t.string "second_contact_division"
    t.string "second_contact_shift"
    t.string "second_contact_school_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "type_of_user", default: "User"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
