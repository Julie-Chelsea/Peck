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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150315202004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auth_group", force: :cascade do |t|
    t.string "name", limit: 80, null: false
  end

  add_index "auth_group", ["name"], name: "auth_group_name_key", unique: true, using: :btree

  create_table "auth_group_permissions", force: :cascade do |t|
    t.integer "group_id",      null: false
    t.integer "permission_id", null: false
  end

  add_index "auth_group_permissions", ["group_id", "permission_id"], name: "auth_group_permissions_group_id_permission_id_key", unique: true, using: :btree
  add_index "auth_group_permissions", ["group_id"], name: "auth_group_permissions_0e939a4f", using: :btree
  add_index "auth_group_permissions", ["permission_id"], name: "auth_group_permissions_8373b171", using: :btree

  create_table "auth_permission", force: :cascade do |t|
    t.string  "name",            limit: 50,  null: false
    t.integer "content_type_id",             null: false
    t.string  "codename",        limit: 100, null: false
  end

  add_index "auth_permission", ["content_type_id", "codename"], name: "auth_permission_content_type_id_codename_key", unique: true, using: :btree
  add_index "auth_permission", ["content_type_id"], name: "auth_permission_417f1b1c", using: :btree

  create_table "auth_user", force: :cascade do |t|
    t.string   "password",     limit: 128, null: false
    t.datetime "last_login",               null: false
    t.boolean  "is_superuser",             null: false
    t.string   "username",     limit: 30,  null: false
    t.string   "first_name",   limit: 30,  null: false
    t.string   "last_name",    limit: 30,  null: false
    t.string   "email",        limit: 75,  null: false
    t.boolean  "is_staff",                 null: false
    t.boolean  "is_active",                null: false
    t.datetime "date_joined",              null: false
  end

  add_index "auth_user", ["username"], name: "auth_user_username_key", unique: true, using: :btree

  create_table "auth_user_groups", force: :cascade do |t|
    t.integer "user_id",  null: false
    t.integer "group_id", null: false
  end

  add_index "auth_user_groups", ["group_id"], name: "auth_user_groups_0e939a4f", using: :btree
  add_index "auth_user_groups", ["user_id", "group_id"], name: "auth_user_groups_user_id_group_id_key", unique: true, using: :btree
  add_index "auth_user_groups", ["user_id"], name: "auth_user_groups_e8701ad4", using: :btree

  create_table "auth_user_user_permissions", force: :cascade do |t|
    t.integer "user_id",       null: false
    t.integer "permission_id", null: false
  end

  add_index "auth_user_user_permissions", ["permission_id"], name: "auth_user_user_permissions_8373b171", using: :btree
  add_index "auth_user_user_permissions", ["user_id", "permission_id"], name: "auth_user_user_permissions_user_id_permission_id_key", unique: true, using: :btree
  add_index "auth_user_user_permissions", ["user_id"], name: "auth_user_user_permissions_e8701ad4", using: :btree

  create_table "django_admin_log", force: :cascade do |t|
    t.datetime "action_time",                 null: false
    t.text     "object_id"
    t.string   "object_repr",     limit: 200, null: false
    t.integer  "action_flag",     limit: 2,   null: false
    t.text     "change_message",              null: false
    t.integer  "content_type_id"
    t.integer  "user_id",                     null: false
  end

  add_index "django_admin_log", ["content_type_id"], name: "django_admin_log_417f1b1c", using: :btree
  add_index "django_admin_log", ["user_id"], name: "django_admin_log_e8701ad4", using: :btree

  create_table "django_content_type", force: :cascade do |t|
    t.string "name",      limit: 100, null: false
    t.string "app_label", limit: 100, null: false
    t.string "model",     limit: 100, null: false
  end

  add_index "django_content_type", ["app_label", "model"], name: "django_content_type_app_label_250a1638029b816b_uniq", unique: true, using: :btree

  create_table "django_migrations", force: :cascade do |t|
    t.string   "app",     limit: 255, null: false
    t.string   "name",    limit: 255, null: false
    t.datetime "applied",             null: false
  end

  create_table "django_session", primary_key: "session_key", force: :cascade do |t|
    t.text     "session_data", null: false
    t.datetime "expire_date",  null: false
  end

  add_index "django_session", ["expire_date"], name: "django_session_de54fa62", using: :btree

  create_table "lessons", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lessons_inlessonquiz", force: :cascade do |t|
    t.string  "title",    limit: 100, null: false
    t.integer "slide_id",             null: false
  end

  add_index "lessons_inlessonquiz", ["slide_id"], name: "lessons_inlessonquiz_5f4468ca", using: :btree

  create_table "lessons_lesson", force: :cascade do |t|
    t.integer  "number",                null: false
    t.string   "title",     limit: 30,  null: false
    t.string   "url",       limit: 200, null: false
    t.string   "language",  limit: 30,  null: false
    t.datetime "published",             null: false
    t.boolean  "visible",               null: false
  end

  create_table "lessons_multiplechoice", force: :cascade do |t|
    t.string  "question", limit: 200, null: false
    t.string  "answer1",  limit: 200, null: false
    t.boolean "correct1",             null: false
    t.string  "answer2",  limit: 200, null: false
    t.boolean "correct2",             null: false
    t.string  "answer3",  limit: 200, null: false
    t.boolean "correct3",             null: false
    t.string  "answer4",  limit: 200, null: false
    t.boolean "correct4",             null: false
    t.integer "quiz_id",              null: false
    t.integer "slide_id",             null: false
  end

  add_index "lessons_multiplechoice", ["quiz_id"], name: "lessons_multiplechoice_baedd54c", using: :btree
  add_index "lessons_multiplechoice", ["slide_id"], name: "lessons_multiplechoice_5f4468ca", using: :btree

  create_table "lessons_slide", force: :cascade do |t|
    t.text    "content",                null: false
    t.boolean "quiz_field",             null: false
    t.integer "lesson_id",              null: false
    t.string  "title",      limit: 200, null: false
  end

  add_index "lessons_slide", ["lesson_id"], name: "lessons_slide_55174b7b", using: :btree

  create_table "lessons_word", force: :cascade do |t|
    t.string  "word",             limit: 200, null: false
    t.string  "romanization",     limit: 200, null: false
    t.string  "definition_one",   limit: 200, null: false
    t.boolean "def_2_exist",                  null: false
    t.string  "definition_two",   limit: 200, null: false
    t.boolean "def_3_exist",                  null: false
    t.string  "definition_three", limit: 200, null: false
    t.string  "speech_level",     limit: 200, null: false
    t.string  "img",              limit: 200, null: false
    t.integer "lesson_id",                    null: false
  end

  add_index "lessons_word", ["lesson_id"], name: "lessons_word_55174b7b", using: :btree

  create_table "lessons_wordrecognition", force: :cascade do |t|
    t.string  "word",     limit: 200, null: false
    t.string  "answer",   limit: 200, null: false
    t.integer "quiz_id",              null: false
    t.integer "slide_id",             null: false
  end

  add_index "lessons_wordrecognition", ["quiz_id"], name: "lessons_wordrecognition_baedd54c", using: :btree
  add_index "lessons_wordrecognition", ["slide_id"], name: "lessons_wordrecognition_5f4468ca", using: :btree

  create_table "materials", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "slides", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.string   "string",            limit: 255
    t.string   "email",             limit: 255
    t.string   "username",          limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest",   limit: 255
    t.string   "remember_digest",   limit: 255
    t.boolean  "admin",                         default: false
    t.string   "activation_digest", limit: 255
    t.boolean  "activated",                     default: false
    t.datetime "activated_at"
    t.string   "reset_digest",      limit: 255
    t.datetime "reset_sent_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  create_table "words", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "django_admin_log", "auth_user", column: "user_id", name: "django_admin_log_user_id_5c31efdd7447749b_fk_auth_user_id"
  add_foreign_key "django_admin_log", "django_content_type", column: "content_type_id", name: "djan_content_type_id_5fc22652e510f0a2_fk_django_content_type_id"
  add_foreign_key "lessons_inlessonquiz", "lessons_slide", column: "slide_id", name: "lessons_inlessonq_slide_id_19a6b0f8a044e57b_fk_lessons_slide_id"
  add_foreign_key "lessons_multiplechoice", "lessons_inlessonquiz", column: "quiz_id", name: "lessons_mul_quiz_id_61cb271d9ba8c4b1_fk_lessons_inlessonquiz_id"
  add_foreign_key "lessons_multiplechoice", "lessons_slide", column: "slide_id", name: "lessons_multiplec_slide_id_6d27974592e14375_fk_lessons_slide_id"
  add_foreign_key "lessons_slide", "lessons_lesson", column: "lesson_id", name: "lessons_slide_lesson_id_7b22d49abe45160d_fk_lessons_lesson_id"
  add_foreign_key "lessons_word", "lessons_lesson", column: "lesson_id", name: "lessons_word_lesson_id_580e3463982191f8_fk_lessons_lesson_id"
  add_foreign_key "lessons_wordrecognition", "lessons_inlessonquiz", column: "quiz_id", name: "lessons_wor_quiz_id_67992be570fe6419_fk_lessons_inlessonquiz_id"
  add_foreign_key "lessons_wordrecognition", "lessons_slide", column: "slide_id", name: "lessons_wordrecog_slide_id_2d908fa17d76344b_fk_lessons_slide_id"
end
