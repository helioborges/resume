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

ActiveRecord::Schema[7.0].define(version: 2023_01_11_023623) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "contact_messages", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resume_educations", force: :cascade do |t|
    t.bigint "resume_info_id", null: false
    t.integer "year_start"
    t.integer "year_end"
    t.string "title"
    t.string "institution"
    t.text "description"
    t.string "url"
    t.boolean "show"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_info_id"], name: "index_resume_educations_on_resume_info_id"
  end

  create_table "resume_emails", force: :cascade do |t|
    t.string "email"
    t.boolean "show"
    t.string "email_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "resume_info_id", null: false
    t.index ["resume_info_id"], name: "index_resume_emails_on_resume_info_id"
  end

  create_table "resume_experiences", force: :cascade do |t|
    t.bigint "resume_info_id", null: false
    t.integer "year_start"
    t.integer "year_end"
    t.string "title"
    t.string "company"
    t.text "description"
    t.string "url"
    t.boolean "show"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_info_id"], name: "index_resume_experiences_on_resume_info_id"
  end

  create_table "resume_infos", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "about"
    t.text "looking"
    t.date "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location"
    t.string "time_zone"
    t.string "schedule"
    t.binary "file_cv"
    t.binary "picture"
  end

  create_table "resume_languages", force: :cascade do |t|
    t.bigint "language_id", null: false
    t.string "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "resume_info_id", null: false
    t.index ["language_id"], name: "index_resume_languages_on_language_id"
    t.index ["resume_info_id"], name: "index_resume_languages_on_resume_info_id"
  end

  create_table "resume_phones", force: :cascade do |t|
    t.string "phone_number"
    t.boolean "show"
    t.boolean "whatsapp"
    t.string "phone_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "resume_info_id", null: false
    t.index ["resume_info_id"], name: "index_resume_phones_on_resume_info_id"
  end

  create_table "resume_skills", force: :cascade do |t|
    t.bigint "resume_info_id", null: false
    t.string "name"
    t.text "description"
    t.integer "level"
    t.boolean "show"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_info_id"], name: "index_resume_skills_on_resume_info_id"
  end

  create_table "resume_social_networks", force: :cascade do |t|
    t.string "url"
    t.boolean "show"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "social_network_id", null: false
    t.bigint "resume_info_id", null: false
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
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["name"], name: "index_users_on_name", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "resume_educations", "resume_infos"
  add_foreign_key "resume_emails", "resume_infos"
  add_foreign_key "resume_experiences", "resume_infos"
  add_foreign_key "resume_languages", "languages"
  add_foreign_key "resume_languages", "resume_infos"
  add_foreign_key "resume_phones", "resume_infos"
  add_foreign_key "resume_skills", "resume_infos"
  add_foreign_key "resume_social_networks", "resume_infos"
  add_foreign_key "resume_social_networks", "social_networks"
end
