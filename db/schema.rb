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

ActiveRecord::Schema.define(version: 20150916005200) do

  create_table "flowers", force: :cascade do |t|
    t.string  "colour"
    t.integer "num_petals"
    t.boolean "clustered"
    t.string  "flowering_month"
    t.string  "image"
    t.boolean "edible"
    t.text    "uses"
    t.text    "cautions"
    t.integer "plant_id"
  end

  create_table "fruits", force: :cascade do |t|
    t.string  "colour"
    t.boolean "has_pit"
    t.integer "diameter"
    t.string  "fruiting_month"
    t.string  "image"
    t.boolean "edible"
    t.text    "uses"
    t.text    "cautions"
    t.integer "plant_id"
  end

  create_table "leaves", force: :cascade do |t|
    t.string  "arrangement"
    t.string  "margin"
    t.string  "colour"
    t.string  "tip_shape"
    t.string  "base_shape"
    t.string  "image"
    t.boolean "edible"
    t.text    "uses"
    t.text    "cautions"
    t.integer "plant_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "common_name"
    t.string "latin_name"
    t.string "image"
    t.string "location"
    t.text   "uses"
    t.text   "cautions"
    t.string "size"
  end

  create_table "roots", force: :cascade do |t|
    t.boolean "runners"
    t.string  "root_type"
    t.string  "image"
    t.boolean "edible"
    t.text    "uses"
    t.text    "cautions"
    t.integer "plant_id"
  end

  create_table "stalks", force: :cascade do |t|
    t.string  "shape"
    t.boolean "climbing"
    t.boolean "has_hairs"
    t.string  "colour"
    t.string  "image"
    t.boolean "edible"
    t.text    "uses"
    t.text    "cautions"
    t.integer "plant_id"
  end

end
