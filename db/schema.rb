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

ActiveRecord::Schema.define(:version => 20120809144948) do

  create_table "bancos", :force => true do |t|
    t.string   "nome"
    t.string   "codigo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "site"
  end

  create_table "capitals", :force => true do |t|
    t.decimal  "montante_real"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.decimal  "montante_aplicado"
  end

  create_table "cheques", :force => true do |t|
    t.integer  "situacao_cheque_id"
    t.integer  "emitente_id"
    t.integer  "banco_id"
    t.integer  "cliente_id"
    t.integer  "socio_id"
    t.integer  "lote_cheque_id"
    t.string   "numero"
    t.decimal  "valor"
    t.date     "vencimento"
    t.string   "agencia"
    t.string   "conta"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.decimal  "taxa_juros"
    t.integer  "tipo_juro_id"
    t.date     "data_troca"
  end

  add_index "cheques", ["banco_id"], :name => "index_cheques_on_banco_id"
  add_index "cheques", ["cliente_id"], :name => "index_cheques_on_cliente_id"
  add_index "cheques", ["emitente_id"], :name => "index_cheques_on_emitente_id"
  add_index "cheques", ["lote_cheque_id"], :name => "index_cheques_on_lote_cheque_id"
  add_index "cheques", ["situacao_cheque_id"], :name => "index_cheques_on_situacao_cheque_id"
  add_index "cheques", ["socio_id"], :name => "index_cheques_on_socio_id"
  add_index "cheques", ["tipo_juro_id"], :name => "index_cheques_on_tipo_juro_id"

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.integer  "tipo_cliente_id"
    t.integer  "municipio_dominio_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "cnpj"
    t.string   "logradouro"
    t.string   "bairro"
    t.string   "cep"
    t.string   "numero"
    t.string   "email"
    t.string   "telefone"
    t.string   "cpf"
  end

  add_index "clientes", ["municipio_dominio_id"], :name => "index_clientes_on_municipio_dominio_id"
  add_index "clientes", ["tipo_cliente_id"], :name => "index_clientes_on_tipo_cliente_id"

  create_table "despesas", :force => true do |t|
    t.string   "nome"
    t.integer  "tipo_despesa_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "despesas", ["tipo_despesa_id"], :name => "index_despesas_on_tipo_despesa_id"

  create_table "emitentes", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "cpf"
  end

  create_table "historico_cheques", :force => true do |t|
    t.date     "entrada"
    t.date     "saida"
    t.string   "descricao"
    t.integer  "cheque_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "situacao_cheque_id"
  end

  add_index "historico_cheques", ["cheque_id"], :name => "index_historico_cheques_on_cheque_id"
  add_index "historico_cheques", ["situacao_cheque_id"], :name => "index_historico_cheques_on_situacao_cheque_id"

  create_table "items", :force => true do |t|
    t.decimal  "valor"
    t.date     "vencimento"
    t.integer  "situacao_item_id"
    t.integer  "despesa_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "items", ["despesa_id"], :name => "index_items_on_despesa_id"
  add_index "items", ["situacao_item_id"], :name => "index_items_on_situacao_item_id"

  create_table "lote_cheques", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "municipio_dominios", :force => true do |t|
    t.string   "nome"
    t.integer  "uf_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "municipio_dominios", ["uf_id"], :name => "index_municipio_dominios_on_uf_id"

  create_table "operacao_financeiras", :force => true do |t|
    t.string   "descricao"
    t.integer  "socio_id"
    t.integer  "cheque_id"
    t.integer  "divida_cliente_id"
    t.integer  "item_id"
    t.integer  "tipo_operacao_financeira_id"
    t.decimal  "valor"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "operacao_financeiras", ["cheque_id"], :name => "index_operacao_financeiras_on_cheque_id"
  add_index "operacao_financeiras", ["divida_cliente_id"], :name => "index_operacao_financeiras_on_divida_cliente_id"
  add_index "operacao_financeiras", ["item_id"], :name => "index_operacao_financeiras_on_item_id"
  add_index "operacao_financeiras", ["socio_id"], :name => "index_operacao_financeiras_on_socio_id"
  add_index "operacao_financeiras", ["tipo_operacao_financeira_id"], :name => "index_operacao_financeiras_on_tipo_operacao_financeira_id"

  create_table "pais_dominios", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "situacao_cheques", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "situacao_divida_clientes", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "situacao_items", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "socios", :force => true do |t|
    t.string   "nome"
    t.decimal  "capital"
    t.string   "cpf"
    t.string   "senha"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "email"
  end

  create_table "tipo_clientes", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipo_despesas", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipo_juros", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipo_operacao_financeiras", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ufs", :force => true do |t|
    t.string   "nome"
    t.integer  "pais_dominio_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "ufs", ["pais_dominio_id"], :name => "index_ufs_on_pais_dominio_id"

end
