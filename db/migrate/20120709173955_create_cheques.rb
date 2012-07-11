class CreateCheques < ActiveRecord::Migration
  def change
    create_table :cheques do |t|
      t.references :situacao_cheque
      t.references :emitente
      t.references :banco
      t.references :cliente
      t.references :socio
      t.string :numero
      t.decimal :valor
      t.date :vencimento
      t.string :agencia
      t.string :conta

      t.timestamps
    end
    add_index :cheques, :situacao_cheque_id
    add_index :cheques, :emitente_id
    add_index :cheques, :banco_id
    add_index :cheques, :cliente_id
    add_index :cheques, :socio_id
  end
end
