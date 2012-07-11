class AddSituacaoChequeIdToHistoricoCheque < ActiveRecord::Migration
  def change
    add_column :historico_cheques, :situacao_cheque_id, :integer
    add_index :historico_cheques, :situacao_cheque_id
  end
end
