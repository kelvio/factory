require 'test_helper'

class SocioTest < ActiveSupport::TestCase
    
  test "should_find_socio_by_cpf" do
    assert Socio.find_by_cpf(socios(:one).cpf)
  end
  
  test "should_list_socio" do
    assert Socio.all
  end
  
  test "shoult_create_socio" do
    socio = Socio.new
    socio.nome = 'Sócio3'
    socio.percentual = 25
    socio.cpf = '03674689709'
    socio.senha = '1234567890'
    assert socio.save
  end
  
  test "should_delete_socio" do
    assert socios(:one).delete
  end
    
end

