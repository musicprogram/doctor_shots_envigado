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

ActiveRecord::Schema.define(version: 20160226173255) do

  create_table "cocktails", force: :cascade do |t|
    t.string   "nombre"
    t.float    "precio"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "shot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ingredients", ["shot_id"], name: "index_ingredients_on_shot_id"

  create_table "jars", force: :cascade do |t|
    t.string   "nombre"
    t.float    "precio"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "licors", force: :cascade do |t|
    t.string   "nombre"
    t.string   "cantidad"
    t.float    "precio"
    t.float    "mililitros"
    t.float    "valor"
    t.string   "categoria"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "milliliters", force: :cascade do |t|
    t.string   "licor"
    t.float    "mililitro"
    t.integer  "shot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "milliliters", ["shot_id"], name: "index_milliliters_on_shot_id"

  create_table "rulers", force: :cascade do |t|
    t.string   "nombre"
    t.float    "precio"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "shots", force: :cascade do |t|
    t.string   "nombre"
    t.float    "precio"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
