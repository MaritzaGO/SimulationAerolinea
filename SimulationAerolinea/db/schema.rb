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

ActiveRecord::Schema.define(version: 20160310214658) do

  create_table "airplanes", force: :cascade do |t|
    t.string   "reference"
    t.string   "state_airplane"
    t.integer  "count_passengers"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "aviones", force: :cascade do |t|
    t.string   "codigo"
    t.string   "marca"
    t.string   "estadoavion"
    t.integer  "totalpasajeros"
    t.string   "ruta_asignada"
    t.integer  "identificacion_piloto"
    t.string   "nombre_piloto"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name_city"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", force: :cascade do |t|
    t.integer  "route_id"
    t.integer  "airplane_id"
    t.integer  "pilot_id"
    t.datetime "date"
    t.float    "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "flights_passengers", force: :cascade do |t|
    t.integer "flight_id"
    t.integer "passenger_id"
  end

  create_table "passengers", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.integer  "identificacion"
    t.integer  "edad"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "pilots", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.integer  "identificacion"
    t.integer  "edad"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "routes", force: :cascade do |t|
    t.integer  "city_o_id"
    t.integer  "city_y_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
