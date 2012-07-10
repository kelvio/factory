class Socio < ActiveRecord::Base
  attr_accessible :cpf, :nome, :percentual, :senha
  
  def self.autenticar(cpf, senha)
    return find_by_cpf_and_senha(cpf, senha)
  end
end
