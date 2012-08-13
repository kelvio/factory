class LoteCheque < ActiveRecord::Base
  has_many :cheque
  attr_accessible :nome

  def to_s
    return self.nome
  end  
end
