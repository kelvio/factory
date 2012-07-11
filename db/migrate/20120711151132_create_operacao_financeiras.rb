class CreateOperacaoFinanceiras < ActiveRecord::Migration
  def change
    create_table :operacao_financeiras do |t|
      t.string :descricao
      t.references :socio
      t.references :tipo_operacao_financeira
      t.decimal :valor

      t.timestamps
    end
    add_index :operacao_financeiras, :socio_id
    add_index :operacao_financeiras, :tipo_operacao_financeira_id
  end
end
