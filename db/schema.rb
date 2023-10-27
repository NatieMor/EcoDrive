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

ActiveRecord::Schema[7.0].define(version: 2023_10_27_010844) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "autos", force: :cascade do |t|
    t.string "modelo_de_auto"
    t.string "Rango"
    t.integer "Precio_por_dia"
    t.date "Año_fabricacion"
    t.bigint "marca_id", null: false
    t.bigint "carracteristica_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carracteristica_id"], name: "index_autos_on_carracteristica_id"
    t.index ["marca_id"], name: "index_autos_on_marca_id"
  end

  create_table "bateria", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cargas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carracteristicas", force: :cascade do |t|
    t.bigint "baterium_id"
    t.bigint "carga_id"
    t.bigint "tecnologium_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["baterium_id"], name: "index_carracteristicas_on_baterium_id"
    t.index ["carga_id"], name: "index_carracteristicas_on_carga_id"
    t.index ["tecnologium_id"], name: "index_carracteristicas_on_tecnologium_id"
  end

  create_table "marcas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tecnologia", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "autos", "carracteristicas"
  add_foreign_key "autos", "marcas"
  add_foreign_key "carracteristicas", "bateria"
  add_foreign_key "carracteristicas", "cargas"
  add_foreign_key "carracteristicas", "tecnologia"
end
