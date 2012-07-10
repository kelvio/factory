require 'test_helper'

class EmitenteTest < ActiveSupport::TestCase

  test "should_find_emitente_by_nome" do
    assert Emitente.find_by_nome(emitentes(:one).nome)
  end
  
  test "should_list_emitentes" do
    assert Emitente.all
  end
  
  test "shoult_create_emitente" do
    emitente = Emitente.new
    emitente.nome = 'Pessoa da Costa'
    assert emitente.save
  end
  
  test "should_delete_emitente" do
    assert emitentes(:one).delete
  end
  
end
