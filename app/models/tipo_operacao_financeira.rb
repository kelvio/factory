class TipoOperacaoFinanceira < ActiveRecord::Base
  attr_accessible :nome
  
  validates :nome, :presence => true, :length => { :within => 3 ... 255}
end
