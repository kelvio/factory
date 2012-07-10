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

ActiveRecord::Schema.define(:version => 20120709184055) do

  create_table "bancos", :force => true do |t|
    t.string   "nome"
    t.string   "codigo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "capitals", :force => true do |t|
    t.decimal  "montante_real"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "cheques", :force => true do |t|
    t.string   "numero"
    t.decimal  "valor"
    t.date     "vencimento"
    t.string   "agencia"
    t.string   "conta"
    t.integer  "banco_id"
    t.integer  "emitente_id"
    t.integer  "cliente_id"
    t.integer  "socio_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "cheques", ["banco_id"], :name => "index_cheques_on_banco_id"
  add_index "cheques", ["cliente_id"], :name => "index_cheques_on_cliente_id"
  add_index "cheques", ["emitente_id"], :name => "index_cheques_on_emitente_id"
  add_index "cheques", ["socio_id"], :name => "index_cheques_on_socio_id"

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "emitentes", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "historico_cheques", :force => true do |t|
    t.date     "entrada"
    t.date     "saida"
    t.string   "descricao"
    t.integer  "cheque_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "historico_cheques", ["cheque_id"], :name => "index_historico_cheques_on_cheque_id"

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "socios", :force => true do |t|
    t.string   "nome"
    t.decimal  "percentual"
    t.string   "cpf"
    t.string   "senha"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
