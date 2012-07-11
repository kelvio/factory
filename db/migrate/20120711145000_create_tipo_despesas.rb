class CreateTipoDespesas < ActiveRecord::Migration
  def change
    create_table :tipo_despesas do |t|
      t.string :nome

      t.timestamps
    end
  end
end
