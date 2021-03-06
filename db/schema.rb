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

ActiveRecord::Schema.define(version: 2022_02_19_160036) do

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_infos", force: :cascade do |t|
    t.integer "user_id"
    t.integer "company_id"
    t.string "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "people"
    t.integer "capital"
    t.integer "fast_money"
    t.integer "avg_money"
    t.string "selection"
    t.string "hp"
    t.string "intern_id"
    t.string "intern_pass"
    t.string "test"
    t.datetime "finish_es_day"
    t.datetime "finish_test_day"
  end

  create_table "events", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.string "contents"
    t.datetime "deadline"
    t.string "event"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.string "address_type"
    t.integer "join"
  end

  create_table "questions", force: :cascade do |t|
    t.string "question"
    t.string "question_kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "user_id"
    t.string "name"
    t.datetime "birthday"
    t.string "graduate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
