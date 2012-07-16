class OperacaoFinanceira < ActiveRecord::Base
  belongs_to :socio
  belongs_to :tipo_operacao_financeira
  
  attr_accessible :descricao, :valor
  
  validates :socio, :presence => true
  validates :tipo_operacao_financeira, :presence => true
  validates :valor, :presence => true
  validates :descricao, :length => { :within => 10 ... 255, :nil => true}
  
  
end
