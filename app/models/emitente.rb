class Emitente < ActiveRecord::Base
  attr_accessible :nome, :cpf
  has_many :cheque
  validates :nome, :presence => true, :length => { :within => 10 ... 255}
  
  def to_s
    return self.nome
  end
end
