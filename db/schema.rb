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

ActiveRecord::Schema.define(version: 20180928020633) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cyclists", force: :cascade do |t|
    t.string   "identificacion"
    t.string   "nombre"
    t.string   "usuario"
    t.string   "clave"
    t.string   "correo"
    t.string   "nomcontact"
    t.string   "correocontact"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "maintenances", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.string   "talleres"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "opinions", force: :cascade do |t|
    t.string   "usuario"
    t.date     "fecha"
    t.string   "tipo"
    t.string   "asunto"
    t.text     "texto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rules", force: :cascade do |t|
    t.string   "articulo"
    t.string   "origen"
    t.string   "capitulo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "security_elements", force: :cascade do |t|
    t.text     "descripcion"
    t.string   "nombre"
    t.string   "reglamentario"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
