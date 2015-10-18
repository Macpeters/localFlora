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

ActiveRecord::Schema.define(version: 20151018133029) do

  create_table "plants", force: :cascade do |t|
    t.string  "common_name"
    t.string  "latin_name"
    t.string  "image"
    t.string  "location"
    t.text    "uses"
    t.text    "cautions"
    t.string  "size"
    t.string  "flower_colour"
    t.integer "flower_num_petals"
    t.boolean "flower_clustered"
    t.string  "flower_month"
    t.string  "flower_image"
    t.boolean "flower_edible"
    t.text    "flower_uses"
    t.text    "flower_cautions"
    t.string  "fruit_colour"
    t.boolean "fruit_has_pit"
    t.integer "fruit_diameter"
    t.string  "fruit_month"
    t.string  "fruit_image"
    t.boolean "fruit_edible"
    t.text    "fruit_uses"
    t.text    "fruit_cautions"
    t.string  "leaf_arrangement"
    t.string  "leaf_margin"
    t.string  "leaf_colour"
    t.string  "leaf_tip_shap"
    t.string  "leaf_base_shape"
    t.string  "leaf_image"
    t.boolean "leaf_edible"
    t.text    "leaf_uses"
    t.text    "leaf_cautions"
    t.boolean "root_runners"
    t.string  "root_type"
    t.string  "root_image"
    t.boolean "root_edible"
    t.text    "root_uses"
    t.text    "root_cautions"
    t.string  "stalk_shape"
    t.boolean "stalk_climbing"
    t.boolean "stalk_has_hairs"
    t.string  "stalk_colour"
    t.string  "stalk_image"
    t.boolean "stalk_edible"
    t.text    "stalk_uses"
    t.text    "stalk_cautions"
  end

end
