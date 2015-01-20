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

ActiveRecord::Schema.define(version: 20150120030641) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auth_group", force: true do |t|
    t.string "name", limit: 80, null: false
  end

  add_index "auth_group", ["name"], name: "auth_group_name_key", unique: true, using: :btree

  create_table "auth_group_permissions", force: true do |t|
    t.integer "group_id",      null: false
    t.integer "permission_id", null: false
  end

  add_index "auth_group_permissions", ["group_id", "permission_id"], name: "auth_group_permissions_group_id_permission_id_key", unique: true, using: :btree
  add_index "auth_group_permissions", ["group_id"], name: "auth_group_permissions_0e939a4f", using: :btree
  add_index "auth_group_permissions", ["permission_id"], name: "auth_group_permissions_8373b171", using: :btree

  create_table "auth_permission", force: true do |t|
    t.string  "name",            limit: 50,  null: false
    t.integer "content_type_id",             null: false
    t.string  "codename",        limit: 100, null: false
  end

  add_index "auth_permission", ["content_type_id", "codename"], name: "auth_permission_content_type_id_codename_key", unique: true, using: :btree
  add_index "auth_permission", ["content_type_id"], name: "auth_permission_417f1b1c", using: :btree

  create_table "auth_user", force: true do |t|
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

  create_table "auth_user_groups", force: true do |t|
    t.integer "user_id",  null: false
    t.integer "group_id", null: false
  end

  add_index "auth_user_groups", ["group_id"], name: "auth_user_groups_0e939a4f", using: :btree
  add_index "auth_user_groups", ["user_id", "group_id"], name: "auth_user_groups_user_id_group_id_key", unique: true, using: :btree
  add_index "auth_user_groups", ["user_id"], name: "auth_user_groups_e8701ad4", using: :btree

  create_table "auth_user_user_permissions", force: true do |t|
    t.integer "user_id",       null: false
    t.integer "permission_id", null: false
  end

  add_index "auth_user_user_permissions", ["permission_id"], name: "auth_user_user_permissions_8373b171", using: :btree
  add_index "auth_user_user_permissions", ["user_id", "permission_id"], name: "auth_user_user_permissions_user_id_permission_id_key", unique: true, using: :btree
  add_index "auth_user_user_permissions", ["user_id"], name: "auth_user_user_permissions_e8701ad4", using: :btree

  create_table "django_admin_log", force: true do |t|
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

  create_table "django_content_type", force: true do |t|
    t.string "name",      limit: 100, null: false
    t.string "app_label", limit: 100, null: false
    t.string "model",     limit: 100, null: false
  end

  add_index "django_content_type", ["app_label", "model"], name: "django_content_type_app_label_73c4b4c0f9ff4cd8_uniq", unique: true, using: :btree

  create_table "django_migrations", force: true do |t|
    t.string   "app",     null: false
    t.string   "name",    null: false
    t.datetime "applied", null: false
  end

  create_table "django_session", primary_key: "session_key", force: true do |t|
    t.text     "session_data", null: false
    t.datetime "expire_date",  null: false
  end

  add_index "django_session", ["expire_date"], name: "django_session_de54fa62", using: :btree

  create_table "lessons_drama", force: true do |t|
    t.integer "entertainment_id", null: false
  end

  add_index "lessons_drama", ["entertainment_id"], name: "lessons_drama_01c24c4f", using: :btree

  create_table "lessons_entertainment", force: true do |t|
    t.integer "lesson_id", null: false
  end

  add_index "lessons_entertainment", ["lesson_id"], name: "lessons_entertainment_55174b7b", using: :btree

  create_table "lessons_fill_in_blank_answer", force: true do |t|
    t.string  "answer",      limit: 50, null: false
    t.integer "question_id",            null: false
  end

  add_index "lessons_fill_in_blank_answer", ["question_id"], name: "lessons_fill_in_blank_answer_7aa0f6ee", using: :btree

  create_table "lessons_fill_in_blank_question", force: true do |t|
    t.string  "instruction", limit: 200, null: false
    t.string  "question",    limit: 500, null: false
    t.integer "quiz_id",                 null: false
  end

  add_index "lessons_fill_in_blank_question", ["quiz_id"], name: "lessons_fill_in_blank_question_baedd54c", using: :btree

  create_table "lessons_lesson", force: true do |t|
    t.integer  "number",                null: false
    t.string   "title",     limit: 30,  null: false
    t.string   "url",       limit: 200, null: false
    t.string   "language",  limit: 30,  null: false
    t.boolean  "visible",               null: false
    t.datetime "published",             null: false
  end

  create_table "lessons_long_translate_answer", force: true do |t|
    t.string  "answer",      limit: 200, null: false
    t.integer "question_id",             null: false
  end

  add_index "lessons_long_translate_answer", ["question_id"], name: "lessons_long_translate_answer_7aa0f6ee", using: :btree

  create_table "lessons_long_translate_question", force: true do |t|
    t.string  "instruction", limit: 200, null: false
    t.string  "question",    limit: 200, null: false
    t.integer "quiz_id",                 null: false
  end

  add_index "lessons_long_translate_question", ["quiz_id"], name: "lessons_long_translate_question_baedd54c", using: :btree

  create_table "lessons_matching_question", force: true do |t|
    t.string  "instruction", limit: 200, null: false
    t.integer "quiz_id",                 null: false
  end

  add_index "lessons_matching_question", ["quiz_id"], name: "lessons_matching_question_baedd54c", using: :btree

  create_table "lessons_multiple_choice_answer", force: true do |t|
    t.string  "answer",      limit: 200, null: false
    t.boolean "correct",                 null: false
    t.integer "question_id",             null: false
  end

  add_index "lessons_multiple_choice_answer", ["question_id"], name: "lessons_multiple_choice_answer_7aa0f6ee", using: :btree

  create_table "lessons_multiple_choice_question", force: true do |t|
    t.string  "question", limit: 200, null: false
    t.integer "quiz_id",              null: false
  end

  add_index "lessons_multiple_choice_question", ["quiz_id"], name: "lessons_multiple_choice_question_baedd54c", using: :btree

  create_table "lessons_pair1", force: true do |t|
    t.string  "item",        limit: 100, null: false
    t.integer "question_id",             null: false
  end

  add_index "lessons_pair1", ["question_id"], name: "lessons_pair1_7aa0f6ee", using: :btree

  create_table "lessons_pair2", force: true do |t|
    t.string  "item",        limit: 100, null: false
    t.integer "question_id",             null: false
  end

  add_index "lessons_pair2", ["question_id"], name: "lessons_pair2_7aa0f6ee", using: :btree

  create_table "lessons_quiz", primary_key: "lesson_id", force: true do |t|
  end

  create_table "lessons_short_translate_answer", force: true do |t|
    t.string  "answer",      limit: 200, null: false
    t.integer "question_id",             null: false
  end

  add_index "lessons_short_translate_answer", ["question_id"], name: "lessons_short_translate_answer_7aa0f6ee", using: :btree

  create_table "lessons_short_translate_question", force: true do |t|
    t.string  "instruction", limit: 200, null: false
    t.string  "question",    limit: 200, null: false
    t.integer "quiz_id",                 null: false
  end

  add_index "lessons_short_translate_question", ["quiz_id"], name: "lessons_short_translate_question_baedd54c", using: :btree

  create_table "lessons_song", force: true do |t|
    t.string  "artist",           limit: 50,  null: false
    t.string  "name",             limit: 100, null: false
    t.string  "URL",              limit: 200, null: false
    t.integer "entertainment_id",             null: false
  end

  add_index "lessons_song", ["entertainment_id"], name: "lessons_song_01c24c4f", using: :btree

  create_table "lessons_song_genre", force: true do |t|
    t.string  "genre",   limit: 50, null: false
    t.integer "song_id",            null: false
  end

  add_index "lessons_song_genre", ["song_id"], name: "lessons_song_genre_e5c27d73", using: :btree

  create_table "lessons_true_false_question", force: true do |t|
    t.string  "question", limit: 200, null: false
    t.boolean "true",                 null: false
    t.integer "quiz_id",              null: false
  end

  add_index "lessons_true_false_question", ["quiz_id"], name: "lessons_true_false_question_baedd54c", using: :btree

  create_table "lessons_video", force: true do |t|
    t.string  "URL",         limit: 200, null: false
    t.string  "instruction", limit: 200, null: false
    t.integer "quiz_id",                 null: false
  end

  add_index "lessons_video", ["quiz_id"], name: "lessons_video_baedd54c", using: :btree

  create_table "lessons_video_answer", force: true do |t|
    t.string  "answer",      limit: 200, null: false
    t.integer "question_id",             null: false
  end

  add_index "lessons_video_answer", ["question_id"], name: "lessons_video_answer_7aa0f6ee", using: :btree

  create_table "lessons_video_question", force: true do |t|
    t.string  "start_time", limit: 10,  null: false
    t.string  "stop_time",  limit: 10,  null: false
    t.string  "question",   limit: 200, null: false
    t.integer "video_id",               null: false
  end

  add_index "lessons_video_question", ["video_id"], name: "lessons_video_question_b58b747e", using: :btree

  create_table "lessons_word", force: true do |t|
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

  create_table "materials", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "string"
    t.string   "email"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
