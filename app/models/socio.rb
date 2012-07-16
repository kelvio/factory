class Socio < ActiveRecord::Base
  attr_accessible :cpf, :nome, :capital, :senha, :senha_confirmation
  
  validates :cpf, :presence => true, :uniqueness => true, :numericality => true
  validates :nome, :presence => true, :length => { :within => 3 ... 255}
  validates :senha, :presence => true, :confirmation => true, :length => { :within => 8 ... 64}
  validates :capital, :presence => true, :numericality => true
  
  before_save :update_montante_real_factory
  
  def self.autenticar(cpf, senha)
    return find_by_cpf_and_senha(cpf, senha)
  end
  
  #Obtém o percentual do sócio baseado no somatório
  #do capital real e aplicado da factory
  def percentual
    return capital * 100 / Capital.find(1).montante
  end
  
  #Altera montante real da factory no momento da criação do sócio
  def update_montante_real_factory
    if new_record?
      capital_factory = Capital.find(1)
      capital_factory.montante_real += capital
      return capital_factory.save()
    end
  end
  
  def to_s
    return self.nome
  end
end
