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

ActiveRecord::Schema[7.0].define(version: 2023_05_23_074135) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administrators", force: :cascade do |t|
    t.string "administrator_email"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_administrators_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.bigint "ticket_id", null: false
    t.bigint "supervisor_id", null: false
    t.bigint "administrator_id", null: false
    t.bigint "executive_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["administrator_id"], name: "index_comments_on_administrator_id"
    t.index ["executive_id"], name: "index_comments_on_executive_id"
    t.index ["supervisor_id"], name: "index_comments_on_supervisor_id"
    t.index ["ticket_id"], name: "index_comments_on_ticket_id"
  end

  create_table "documents", force: :cascade do |t|
    t.string "file_type"
    t.bigint "ticket_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ticket_id"], name: "index_documents_on_ticket_id"
  end

  create_table "executives", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "report_id", null: false
    t.bigint "administrator_id", null: false
    t.bigint "supervisor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["administrator_id"], name: "index_executives_on_administrator_id"
    t.index ["report_id"], name: "index_executives_on_report_id"
    t.index ["supervisor_id"], name: "index_executives_on_supervisor_id"
    t.index ["user_id"], name: "index_executives_on_user_id"
  end

  create_table "reports", force: :cascade do |t|
    t.integer "number_tickets"
    t.integer "tickets_closed"
    t.integer "tickets_open"
    t.integer "rating_mean"
    t.bigint "administrator_id", null: false
    t.bigint "supervisor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["administrator_id"], name: "index_reports_on_administrator_id"
    t.index ["supervisor_id"], name: "index_reports_on_supervisor_id"
  end

  create_table "requesting_users", force: :cascade do |t|
    t.string "requesting_email"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_requesting_users_on_user_id"
  end

  create_table "responses", force: :cascade do |t|
    t.string "resolution_key"
    t.text "res_description"
    t.string "r_scale"
    t.text "feedback"
    t.boolean "acceptance_state"
    t.date "response_date"
    t.bigint "requesting_user_id", null: false
    t.bigint "executive_id", null: false
    t.bigint "ticket_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["executive_id"], name: "index_responses_on_executive_id"
    t.index ["requesting_user_id"], name: "index_responses_on_requesting_user_id"
    t.index ["ticket_id"], name: "index_responses_on_ticket_id"
  end

  create_table "supervisors", force: :cascade do |t|
    t.string "supervisor_email"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_supervisors_on_user_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.string "title"
    t.date "creation_date"
    t.string "category"
    t.text "description"
    t.integer "priority"
    t.string "state"
    t.date "deadline"
    t.string "on_time"
    t.string "tags"
    t.bigint "requesting_user_id", null: false
    t.bigint "executive_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["executive_id"], name: "index_tickets_on_executive_id"
    t.index ["requesting_user_id"], name: "index_tickets_on_requesting_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "last_name"
    t.string "telephone"
    t.string "password"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "administrators", "users"
  add_foreign_key "comments", "administrators"
  add_foreign_key "comments", "executives"
  add_foreign_key "comments", "supervisors"
  add_foreign_key "comments", "tickets"
  add_foreign_key "documents", "tickets"
  add_foreign_key "executives", "administrators"
  add_foreign_key "executives", "reports"
  add_foreign_key "executives", "supervisors"
  add_foreign_key "executives", "users"
  add_foreign_key "reports", "administrators"
  add_foreign_key "reports", "supervisors"
  add_foreign_key "requesting_users", "users"
  add_foreign_key "responses", "executives"
  add_foreign_key "responses", "requesting_users"
  add_foreign_key "responses", "tickets"
  add_foreign_key "supervisors", "users"
  add_foreign_key "tickets", "executives"
  add_foreign_key "tickets", "requesting_users"
end
