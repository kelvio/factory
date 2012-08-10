class CreateMunicipioDominios < ActiveRecord::Migration
  def change
    create_table :municipio_dominios do |t|
      t.string :nome
      t.references :uf

      t.timestamps
    end
    add_index :municipio_dominios, :uf_id
  end
end
