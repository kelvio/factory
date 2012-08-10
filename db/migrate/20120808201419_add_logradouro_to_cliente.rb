class AddLogradouroToCliente < ActiveRecord::Migration
  def change
    add_column :clientes, :logradouro, :string
  end
end
