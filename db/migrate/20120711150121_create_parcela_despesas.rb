class CreateParcelaDespesas < ActiveRecord::Migration
  def change
    create_table :parcela_despesas do |t|
      t.references :despesa
      t.date :vencimento
      t.decimal :valor

      t.timestamps
    end
    add_index :parcela_despesas, :despesa_id
  end
end
