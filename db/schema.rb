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

ActiveRecord::Schema.define(:version => 20120616153008) do

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

  create_table "medicos", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "medicos", ["email"], :name => "index_medicos_on_email", :unique => true
  add_index "medicos", ["reset_password_token"], :name => "index_medicos_on_reset_password_token", :unique => true

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
