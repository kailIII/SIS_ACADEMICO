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

ActiveRecord::Schema.define(version: 20141214180020) do

  create_table "alumnos", force: true do |t|
    t.string   "ci_alu"
    t.string   "nombres_alu"
    t.string   "apellidos_alu"
    t.datetime "fnac_alu"
    t.string   "lnac_alu"
    t.string   "direccion_alu"
    t.string   "telefono_alu"
    t.string   "celular_alu"
    t.string   "email_alu"
    t.string   "est_civil_alu"
    t.string   "genero_alu"
    t.string   "nacionalidad_alu"
    t.string   "procedencia_alu"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "anho_lectivos", force: true do |t|
    t.integer  "anho_lect"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cargos", force: true do |t|
    t.string   "descripcion_carg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carreras", force: true do |t|
    t.string   "nombre_carr"
    t.integer  "duracion_carr"
    t.string   "titulo_obt_carr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ciudads", force: true do |t|
    t.string   "nombre_ciu"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "docentes", force: true do |t|
    t.string   "ci_doc"
    t.string   "nombre_doc"
    t.string   "apellido_doc"
    t.datetime "fnac_doc"
    t.string   "lnac_doc"
    t.text     "direccion_doc"
    t.string   "telefono_doc"
    t.string   "celular_doc"
    t.string   "email_doc"
    t.string   "est_civil_doc"
    t.string   "genero_doc"
    t.string   "nacionalidad_doc"
    t.text     "especialidad_doc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facu_carreras", force: true do |t|
    t.integer  "carrera_id"
    t.integer  "facultad_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "facu_carreras", ["carrera_id"], name: "index_facu_carreras_on_carrera_id", using: :btree
  add_index "facu_carreras", ["facultad_id"], name: "index_facu_carreras_on_facultad_id", using: :btree

  create_table "facultads", force: true do |t|
    t.string   "nombre_facu"
    t.text     "direccion_facu"
    t.string   "telefono_facu"
    t.string   "email_facu"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funcionarios", force: true do |t|
    t.string   "ci_fun"
    t.string   "nombres_fun"
    t.string   "apellidos_fun"
    t.datetime "fnac_fun"
    t.string   "lnac_fun"
    t.text     "direccion_fun"
    t.string   "telefono_fun"
    t.string   "celular_fun"
    t.string   "email_fun"
    t.string   "est_civil_fun"
    t.string   "genero_fun"
    t.string   "nacionalidad_fun"
    t.string   "especialidad_fun"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materia", force: true do |t|
    t.string   "cod_mat"
    t.string   "nombre_mat"
    t.string   "alias_mat"
    t.integer  "hs_mat"
    t.text     "contenido_mat"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nota", force: true do |t|
    t.string   "nro_nota"
    t.string   "letra_nota"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sedes", force: true do |t|
    t.integer  "ciudad_id"
    t.integer  "facu_carrera_id"
    t.integer  "universidad_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sedes", ["ciudad_id"], name: "index_sedes_on_ciudad_id", using: :btree
  add_index "sedes", ["facu_carrera_id"], name: "index_sedes_on_facu_carrera_id", using: :btree
  add_index "sedes", ["universidad_id"], name: "index_sedes_on_universidad_id", using: :btree

  create_table "semestres", force: true do |t|
    t.string   "descripcion_sem"
    t.integer  "nro_sem"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "universidads", force: true do |t|
    t.string   "nombre_uni"
    t.text     "direccion_uni"
    t.string   "telefono_uni"
    t.string   "web_uni"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
