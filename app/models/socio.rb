class Socio < ActiveRecord::Base
  attr_accessible :cpf, :nome, :percentual, :senha, :senha_confirmation
  
  validates :cpf, :presence => true, :uniqueness => true, :numericality => true
  validates :nome, :presence => true, :length => { :within => 3 ... 255}
  validates :senha, :presence => true, :confirmation => true, :length => { :within => 8 ... 64}
  
  def self.autenticar(cpf, senha)
    return find_by_cpf_and_senha(cpf, senha)
  end
  
  def to_s
    return self.nome
  end
end
