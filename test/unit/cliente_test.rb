require 'test_helper'

class ClienteTest < ActiveSupport::TestCase

  test "should_find_cliente_by_nome" do
    assert Cliente.find_by_nome(clientes(:one).nome)
  end
  
  test "should_list_clientes" do
    assert Cliente.all
  end
  
  test "shoult_create_cliente" do
    cliente = Cliente.new
    cliente.nome = 'Pessoa da Costa'
    assert cliente.save
  end
  
  test "should_delete_cliente" do
    assert clientes(:one).delete
  end

end

