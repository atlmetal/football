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

ActiveRecord::Schema[7.0].define(version: 2022_04_26_020645) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.date "foundation_date"
    t.integer "tittles"
    t.bigint "league_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["league_id"], name: "index_clubs_on_league_id"
  end

  create_table "confederations", force: :cascade do |t|
    t.string "name"
    t.integer "members"
    t.text "continental_tournament"
    t.text "description"
    t.date "foundation_date"
    t.bigint "football_organization_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["football_organization_id"], name: "index_confederations_on_football_organization_id"
  end

  create_table "federations", force: :cascade do |t|
    t.string "name"
    t.string "national_team"
    t.text "description"
    t.date "foundation_date"
    t.bigint "confederation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confederation_id"], name: "index_federations_on_confederation_id"
  end

  create_table "football_organizations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "foundation_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.text "local_tournament"
    t.integer "club_members"
    t.string "current_champion"
    t.date "foundation_date"
    t.bigint "federation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["federation_id"], name: "index_leagues_on_federation_id"
  end

  add_foreign_key "clubs", "leagues"
  add_foreign_key "confederations", "football_organizations"
  add_foreign_key "federations", "confederations"
  add_foreign_key "leagues", "federations"
end
