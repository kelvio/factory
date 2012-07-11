class CreateSituacaoCheques < ActiveRecord::Migration
  def change
    create_table :situacao_cheques do |t|
      t.string :nome

      t.timestamps
    end
  end
end
