class CreateMunicipios < ActiveRecord::Migration
  def change
    create_table :municipios do |t|
      t.string :nome
      t.references :uf

      t.timestamps
    end
    add_index :municipios, :uf_id
  end
end
