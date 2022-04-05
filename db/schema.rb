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

ActiveRecord::Schema[7.0].define(version: 2022_04_05_100057) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", comment: "イベント", force: :cascade do |t|
    t.string "title", null: false, comment: "タイトル"
    t.text "body", null: false, comment: "説明"
    t.date "date", null: false, comment: "日付"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "speakers", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.string "name", null: false, comment: "名前"
    t.string "title", null: false, comment: "タイトル"
    t.time "start_time", null: false, comment: "開始時刻"
    t.time "end_time", null: false, comment: "終了時刻"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_speakers_on_event_id"
  end

  add_foreign_key "speakers", "events"
end
