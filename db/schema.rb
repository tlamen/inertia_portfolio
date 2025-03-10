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

ActiveRecord::Schema[8.0].define(version: 2025_03_10_033132) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "education_translations", force: :cascade do |t|
    t.string "institution"
    t.string "title"
    t.text "description"
    t.string "start_date"
    t.string "end_date"
    t.bigint "language_id", null: false
    t.bigint "education_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["education_id"], name: "index_education_translations_on_education_id"
    t.index ["language_id"], name: "index_education_translations_on_language_id"
  end

  create_table "educations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experience_translations", force: :cascade do |t|
    t.string "company"
    t.string "role"
    t.string "start_date"
    t.string "end_date"
    t.text "description"
    t.bigint "experience_id", null: false
    t.bigint "language_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["experience_id"], name: "index_experience_translations_on_experience_id"
    t.index ["language_id"], name: "index_experience_translations_on_language_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "default", default: false
    t.string "acronym"
  end

  create_table "personal_info_translations", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "personal_info_id", null: false
    t.bigint "language_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_personal_info_translations_on_language_id"
    t.index ["personal_info_id"], name: "index_personal_info_translations_on_personal_info_id"
  end

  create_table "personal_infos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "label"
  end

  create_table "project_translations", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "project_id", null: false
    t.bigint "language_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_project_translations_on_language_id"
    t.index ["project_id"], name: "index_project_translations_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "stakeholder"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "public"
  end

  create_table "skill_translations", force: :cascade do |t|
    t.string "title"
    t.bigint "language_id", null: false
    t.bigint "skill_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_skill_translations_on_language_id"
    t.index ["skill_id"], name: "index_skill_translations_on_skill_id"
  end

  create_table "skills", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rating"
  end

  add_foreign_key "education_translations", "educations"
  add_foreign_key "education_translations", "languages"
  add_foreign_key "experience_translations", "experiences"
  add_foreign_key "experience_translations", "languages"
  add_foreign_key "personal_info_translations", "languages"
  add_foreign_key "personal_info_translations", "personal_infos"
  add_foreign_key "project_translations", "languages"
  add_foreign_key "project_translations", "projects"
  add_foreign_key "skill_translations", "languages"
  add_foreign_key "skill_translations", "skills"
end
