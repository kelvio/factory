class SituacaoCheque < ActiveRecord::Base
  attr_accessible :nome
  
  validates :nome, :length => { :within => 10 ... 255}
  
  def to_s
    return self.nome
  end
end
