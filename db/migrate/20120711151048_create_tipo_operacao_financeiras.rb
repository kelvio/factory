class CreateTipoOperacaoFinanceiras < ActiveRecord::Migration
  def change
    create_table :tipo_operacao_financeiras do |t|
      t.string :nome

      t.timestamps
    end
  end
end
