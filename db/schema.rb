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

ActiveRecord::Schema.define(version: 2021_10_18_025259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_users", force: :cascade do |t|
    t.bigint "users_id", null: false
    t.bigint "accounts_id", null: false
    t.integer "permissions"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["accounts_id"], name: "index_account_users_on_accounts_id"
    t.index ["users_id"], name: "index_account_users_on_users_id"
  end

  create_table "accounts", force: :cascade do |t|
    t.string "account_name"
    t.string "website"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.bigint "accounts_id", null: false
    t.string "contact_name"
    t.string "title"
    t.string "photo_url"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["accounts_id"], name: "index_contacts_on_accounts_id"
  end

  create_table "interaction_contacts", force: :cascade do |t|
    t.bigint "interactions_id", null: false
    t.bigint "contacts_id", null: false
    t.string "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contacts_id"], name: "index_interaction_contacts_on_contacts_id"
    t.index ["interactions_id"], name: "index_interaction_contacts_on_interactions_id"
  end

  create_table "interactions", force: :cascade do |t|
    t.bigint "accounts_id", null: false
    t.date "date"
    t.text "interaction_summary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["accounts_id"], name: "index_interactions_on_accounts_id"
  end

  create_table "notes", force: :cascade do |t|
    t.bigint "contacts_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contacts_id"], name: "index_notes_on_contacts_id"
  end

  create_table "objectives", force: :cascade do |t|
    t.bigint "accounts_id", null: false
    t.text "description"
    t.string "objective_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["accounts_id"], name: "index_objectives_on_accounts_id"
  end

  create_table "summaries", force: :cascade do |t|
    t.bigint "accounts_id", null: false
    t.text "summary_content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["accounts_id"], name: "index_summaries_on_accounts_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.bigint "accounts_id", null: false
    t.text "task_description"
    t.date "due_date"
    t.string "task_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["accounts_id"], name: "index_tasks_on_accounts_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "account_users", "accounts", column: "accounts_id"
  add_foreign_key "account_users", "users", column: "users_id"
  add_foreign_key "contacts", "accounts", column: "accounts_id"
  add_foreign_key "interaction_contacts", "contacts", column: "contacts_id"
  add_foreign_key "interaction_contacts", "interactions", column: "interactions_id"
  add_foreign_key "interactions", "accounts", column: "accounts_id"
  add_foreign_key "notes", "contacts", column: "contacts_id"
  add_foreign_key "objectives", "accounts", column: "accounts_id"
  add_foreign_key "summaries", "accounts", column: "accounts_id"
  add_foreign_key "tasks", "accounts", column: "accounts_id"
end
