class CreateUfs < ActiveRecord::Migration
  def change
    create_table :ufs do |t|
      t.string :nome
      t.references :pais_dominio

      t.timestamps
    end
    add_index :ufs, :pais_dominio_id
  end
end
