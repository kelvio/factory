class CreateDespesas < ActiveRecord::Migration
  def change
    create_table :despesas do |t|
      t.string :nome
      t.references :tipo_despesa
      t.timestamps
    end
    add_index :despesas, :tipo_despesa_id
  end
end
