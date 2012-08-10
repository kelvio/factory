class Banco < ActiveRecord::Base
  attr_accessible :codigo, :nome, :site
  has_many :cheque
  
  validates :codigo, :presence => true, :uniqueness => true, :numericality => true
  validates :nome, :presence => true, :uniqueness => true, :length => { :within => 3 ... 255}
  
  def to_s
    return self.nome
  end
end
