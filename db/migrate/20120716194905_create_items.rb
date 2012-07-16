class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.decimal :valor
      t.date :vencimento
      t.references :situacao_item
      t.references :despesa

      t.timestamps
    end
    add_index :items, :situacao_item_id
    add_index :items, :despesa_id
  end
end
