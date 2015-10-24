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

ActiveRecord::Schema.define(version: 20151024005223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "countries", force: :cascade do |t|
    t.text     "iso_code"
    t.text     "name"
    t.text     "formal_name"
    t.text     "sovereignt"
    t.text     "continent"
    t.text     "region"
    t.integer  "population"
    t.geometry "coordinates",      limit: {:srid=>4326, :type=>"geometry"}
    t.text     "json_coordinates"
    t.datetime "created_at",                                                null: false
    t.datetime "updated_at",                                                null: false
  end

  add_index "countries", ["coordinates"], name: "index_countries_on_coordinates", using: :gist

  create_table "freshwater_ecoregions", force: :cascade do |t|
    t.integer  "feow_id"
    t.text     "name"
    t.text     "realm"
    t.text     "major_habitat_type"
    t.float    "area_km2"
    t.text     "web_page"
    t.geometry "coordinates",        limit: {:srid=>4326, :type=>"geometry"}
    t.text     "json_coordinates"
    t.datetime "created_at",                                                  null: false
    t.datetime "updated_at",                                                  null: false
  end

  add_index "freshwater_ecoregions", ["coordinates"], name: "index_freshwater_ecoregions_on_coordinates", using: :gist

end