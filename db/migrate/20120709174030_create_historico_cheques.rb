class CreateHistoricoCheques < ActiveRecord::Migration
  def change
    create_table :historico_cheques do |t|
      t.date :entrada
      t.date :saida
      t.string :descricao
      t.references :cheque

      t.timestamps
    end
    add_index :historico_cheques, :cheque_id
  end
end
