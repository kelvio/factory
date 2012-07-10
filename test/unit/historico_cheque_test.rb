require 'test_helper'

class HistoricoChequeTest < ActiveSupport::TestCase

  test "should_find_historico_by_nome" do
    assert HistoricoCheque.find_by_descricao(historico_cheques(:one).descricao)
  end
  
  test "should_list_historico" do
    assert HistoricoCheque.all
  end
  
  test "shoult_create_historico" do
    h = HistoricoCheque.new
    h.entrada = '2012-01-01'
    h.saida = '2012-02-01'
    assert h.save
  end
  
  test "should_delete_historico" do
    assert historico_cheques(:one).delete
  end
  
end
