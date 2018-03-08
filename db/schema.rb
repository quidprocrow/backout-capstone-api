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

ActiveRecord::Schema.define(version: 20180308012612) do

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
    t.bigint "user_id"
    t.string "mnemonic"
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "seededsentences", force: :cascade do |t|
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seededsteps", force: :cascade do |t|
    t.integer "redact", default: [], array: true
    t.integer "sentenceindex"
    t.integer "hopemodifier"
    t.integer "wisdommodifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "seededword_id"
    t.index ["seededword_id"], name: "index_seededsteps_on_seededword_id"
  end

  create_table "seededwords", force: :cascade do |t|
    t.string "text"
    t.boolean "clickable"
    t.boolean "redacted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "seededsentence_id"
    t.index ["seededsentence_id"], name: "index_seededwords_on_seededsentence_id"
  end

  create_table "sentences", force: :cascade do |t|
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "game_id"
    t.bigint "user_id"
    t.index ["game_id"], name: "index_sentences_on_game_id"
    t.index ["user_id"], name: "index_sentences_on_user_id"
  end

  create_table "steps", force: :cascade do |t|
    t.integer "redact", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "hopemodifier"
    t.integer "wisdommodifier"
    t.integer "sentenceindex"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_steps_on_user_id"
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
    t.bigint "user_id"
    t.integer "seedid"
    t.integer "seedstep"
    t.index ["sentence_id"], name: "index_words_on_sentence_id"
    t.index ["user_id"], name: "index_words_on_user_id"
  end

  add_foreign_key "examples", "users"
  add_foreign_key "games", "users"
  add_foreign_key "seededsteps", "seededwords"
  add_foreign_key "seededwords", "seededsentences"
  add_foreign_key "sentences", "games"
  add_foreign_key "sentences", "users"
  add_foreign_key "steps", "users"
  add_foreign_key "words", "sentences"
  add_foreign_key "words", "users"
end
