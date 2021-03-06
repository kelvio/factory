class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.references :tipo_cliente
      t.references :municipio_dominio
      t.timestamps
    end
    add_index :clientes, :tipo_cliente_id
    add_index :clientes, :municipio_dominio_id
  end
end
