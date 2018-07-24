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

ActiveRecord::Schema.define(version: 2018_07_20_003025) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ofertaeducativas", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.integer "institucion_id"
    t.integer "categoria_id"
    t.integer "jornada_id"
    t.integer "ubicacion_id"
    t.integer "duracion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "correo"
    t.string "celular"
    t.integer "ciudad"
    t.string "genero"
    t.string "username"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end