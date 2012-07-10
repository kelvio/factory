require 'test_helper'

class ChequeTest < ActiveSupport::TestCase

  test "should_find_cheque_by_numero" do
    assert Cheque.find_by_numero(cheques(:one).numero)
  end
  
  test "should_list_cheques" do
    assert Cheque.all
  end
  
  test "shoult_create_cheque" do
    cheque = Cheque.new
    cheque.valor = 1000
    cheque.vencimento = '2012-07-09'
    cheque.agencia = '000001'
    cheque.conta = '0000001'
    cheque.emitente = emitentes(:one)
    cheque.banco = bancos(:one)
    cheque.cliente = clientes(:one)
    cheque.socio = socios(:one)
    assert cheque.save
  end
  
  test "should_delete_cheque" do
    assert cheques(:one).delete
  end    
end

