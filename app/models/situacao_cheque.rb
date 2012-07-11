class SituacaoCheque < ActiveRecord::Base
  attr_accessible :nome
  
  def to_s
    return self.nome
  end
end
