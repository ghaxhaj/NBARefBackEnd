# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_24_173340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "player_stats", force: :cascade do |t|
    t.integer "season"
    t.integer "player_id"
    t.integer "games_played"
    t.float "mpg"
    t.integer "fgm"
    t.integer "fga"
    t.float "fgper"
    t.integer "three_pm"
    t.integer "three_pa"
    t.float "three_per"
    t.integer "ftm"
    t.integer "fta"
    t.float "ftper"
    t.float "orpg"
    t.float "drpg"
    t.float "trpg"
    t.float "apg"
    t.float "bpg"
    t.float "spg"
    t.float "ppg"
    t.float "topg"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "players", force: :cascade do |t|
    t.integer "team_id"
    t.string "name"
    t.string "height"
    t.string "position"
    t.string "weight"
    t.string "img"
    t.integer "number"
    t.integer "Stat_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "team_stats", force: :cascade do |t|
    t.integer "season"
    t.integer "team_id"
    t.float "ppg"
    t.float "papg"
    t.float "rpg"
    t.float "apg"
    t.float "spg"
    t.float "bpg"
    t.float "topg"
    t.float "fgper"
    t.float "threefgper"
    t.float "ftper"
    t.float "efgper"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "abbreviation"
    t.string "city"
    t.string "conference"
    t.string "division"
    t.string "name"
    t.string "img"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
