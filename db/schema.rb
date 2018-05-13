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

ActiveRecord::Schema.define(version: 2018_05_09_195214) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "admin_email"
    t.string "admin_password"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "cohorts", force: :cascade do |t|
    t.integer "course_id"
    t.string "cohort_name"
    t.datetime "start_date"
    t.datetime "end_date"
  end

  create_table "courses", force: :cascade do |t|
    t.integer "cohort_id"
    t.string "course_name"
    t.integer "course_hours"
    t.string "course_description"
  end

  create_table "installs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_installs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_installs_on_reset_password_token", unique: true
  end

  create_table "instructors", force: :cascade do |t|
    t.integer "cohort_id"
    t.integer "course_id"
    t.string "instructor_firstname"
    t.string "instructor_lastname"
    t.string "instructor_email"
    t.string "instructor_password"
    t.integer "instructor_age"
    t.integer "instructor_salary"
    t.string "instructor_highested"
  end

  create_table "students", force: :cascade do |t|
    t.integer "cohort_id"
    t.integer "course_id"
    t.string "student_firstname"
    t.string "student_lastname"
    t.string "student_email"
    t.string "student_password"
    t.integer "student_age"
    t.string "student_highested"
    t.integer "student_gpa"
    t.string "student_grade"
  end

end
