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

ActiveRecord::Schema.define(version: 2019_06_06_083624) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "problem_votes", force: :cascade do |t|
    t.bigint "problem_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["problem_id"], name: "index_problem_votes_on_problem_id"
    t.index ["user_id"], name: "index_problem_votes_on_user_id"
  end

  create_table "problems", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "problem_votes_count", default: 0
    t.bigint "category_id"
    t.index ["category_id"], name: "index_problems_on_category_id"
    t.index ["user_id"], name: "index_problems_on_user_id"
  end

  create_table "solution_votes", force: :cascade do |t|
    t.bigint "solution_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["solution_id"], name: "index_solution_votes_on_solution_id"
    t.index ["user_id"], name: "index_solution_votes_on_user_id"
  end

  create_table "solutions", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "user_id"
    t.bigint "problem_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "solution_votes_count", default: 0
    t.string "target"
    t.string "file"
    t.string "photo"
    t.integer "status", default: 0
    t.index ["problem_id"], name: "index_solutions_on_problem_id"
    t.index ["user_id"], name: "index_solutions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "problem_votes", "problems"
  add_foreign_key "problem_votes", "users"
  add_foreign_key "problems", "categories"
  add_foreign_key "problems", "users"
  add_foreign_key "solution_votes", "solutions"
  add_foreign_key "solution_votes", "users"
  add_foreign_key "solutions", "problems"
  add_foreign_key "solutions", "users"
end
