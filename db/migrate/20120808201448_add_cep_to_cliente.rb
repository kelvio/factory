class AddCepToCliente < ActiveRecord::Migration
  def change
    add_column :clientes, :cep, :string
  end
end
