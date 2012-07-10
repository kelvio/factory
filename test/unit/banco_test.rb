require 'test_helper'

class BancoTest < ActiveSupport::TestCase

  test "should_find_banco_by_codigo" do
    assert Banco.find_by_codigo(bancos(:one).codigo)
  end
  
  test "should_list_bancos" do
    assert Banco.all
  end
  
  test "shoult_create_banco" do
    banco = Banco.new
    banco.nome = 'BRB'
    banco.codigo = '007'
    assert banco.save
  end
  
  test "should_delete_banco" do
    assert bancos(:one).delete
  end
  
end
