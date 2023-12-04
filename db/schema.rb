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

ActiveRecord::Schema.define(version: 2023_11_30_225551) do

  create_table "cities", force: :cascade do |t|
    t.integer "cod"
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "state_id"
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "events_forms", force: :cascade do |t|
    t.string "categoryevent"
    t.string "grouping"
    t.string "subgrouping"
    t.string "species"
    t.string "subspecies"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "persons_registers", force: :cascade do |t|
    t.string "name"
    t.integer "cpf"
    t.integer "rg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "tipe"
    t.integer "cod"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "AddEvents_id"
    t.integer "events_form_id"
    t.index ["AddEvents_id"], name: "index_services_on_AddEvents_id"
    t.index ["events_form_id"], name: "index_services_on_events_form_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "acronym"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
