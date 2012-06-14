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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120614003927) do

  create_table "estados", :force => true do |t|
    t.string   "nome"
    t.string   "sigla"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estados_civis", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pacientes", :force => true do |t|
    t.string   "nome"
    t.date     "data_nascimento"
    t.integer  "naturalidade"
    t.text     "endereco"
    t.integer  "estado_civil_id"
    t.integer  "num_filhos"
    t.integer  "num_partos"
    t.integer  "num_abortos"
    t.string   "profissao"
    t.string   "situacao_profissional"
    t.string   "nome_familiar"
    t.string   "telefone_familiar"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sexo",                  :limit => 1
  end

end
