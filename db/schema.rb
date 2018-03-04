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

ActiveRecord::Schema.define(version: 20180304164546) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.integer "hope"
    t.integer "wisdom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sentences", force: :cascade do |t|
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "game_id"
    t.bigint "step_id"
    t.index ["game_id"], name: "index_sentences_on_game_id"
    t.index ["step_id"], name: "index_sentences_on_step_id"
  end

  create_table "steps", force: :cascade do |t|
    t.integer "redact", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "word_id"
    t.index ["word_id"], name: "index_steps_on_word_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  create_table "words", force: :cascade do |t|
    t.string "text"
    t.boolean "clickable"
    t.boolean "redacted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "sentence_id"
    t.index ["sentence_id"], name: "index_words_on_sentence_id"
  end

  add_foreign_key "examples", "users"
  add_foreign_key "sentences", "games"
  add_foreign_key "sentences", "steps"
  add_foreign_key "steps", "words"
  add_foreign_key "words", "sentences"
end
