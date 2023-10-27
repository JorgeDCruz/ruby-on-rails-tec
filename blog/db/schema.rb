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

ActiveRecord::Schema[7.1].define(version: 2023_10_27_000839) do
  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_models", force: :cascade do |t|
    t.integer "pokemon_id"
    t.string "pokemon_name"
    t.string "tipo1"
    t.string "tipo2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trainer_models", force: :cascade do |t|
    t.integer "trainer_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trainers_pokemons", force: :cascade do |t|
    t.integer "pokemon_model_id", null: false
    t.integer "trainer_model_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pokemon_model_id"], name: "index_trainers_pokemons_on_pokemon_model_id"
    t.index ["trainer_model_id"], name: "index_trainers_pokemons_on_trainer_model_id"
  end

  add_foreign_key "trainers_pokemons", "pokemon_models"
  add_foreign_key "trainers_pokemons", "trainer_models"
end
