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

ActiveRecord::Schema[7.0].define(version: 2022_12_12_131966) do
  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resume_emails", force: :cascade do |t|
    t.string "email"
    t.boolean "show"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "resume_info_id", null: false
    t.index ["resume_info_id"], name: "index_resume_emails_on_resume_info_id"
  end

  create_table "resume_infos", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "about"
    t.text "looking"
    t.date "birthday"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resume_languages", force: :cascade do |t|
    t.integer "language_id", null: false
    t.string "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "resume_info_id", null: false
    t.index ["language_id"], name: "index_resume_languages_on_language_id"
    t.index ["resume_info_id"], name: "index_resume_languages_on_resume_info_id"
  end

  create_table "resume_phones", force: :cascade do |t|
    t.string "phone_number"
    t.boolean "show"
    t.boolean "whatsapp"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "resume_info_id", null: false
    t.index ["resume_info_id"], name: "index_resume_phones_on_resume_info_id"
  end

  create_table "resume_social_networks", force: :cascade do |t|
    t.string "url"
    t.boolean "show"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "social_network_id", null: false
    t.integer "resume_info_id", null: false
    t.index ["resume_info_id"], name: "index_resume_social_networks_on_resume_info_id"
    t.index ["social_network_id"], name: "index_resume_social_networks_on_social_network_id"
  end

  create_table "social_networks", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["name"], name: "index_users_on_name", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "resume_emails", "resume_infos"
  add_foreign_key "resume_languages", "languages"
  add_foreign_key "resume_languages", "resume_infos"
  add_foreign_key "resume_phones", "resume_infos"
  add_foreign_key "resume_social_networks", "resume_infos"
  add_foreign_key "resume_social_networks", "social_networks"
end
