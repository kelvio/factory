class OperacaoFinanceira < ActiveRecord::Base
  belongs_to :socio
  belongs_to :tipo_operacao_financeira
  belongs_to :cheque
  belongs_to :item
  
  
  attr_accessible :descricao, :valor, :socio, :tipo_operacao_financeira, :cheque, :item
  
  validates :socio, :presence => true
  validates :tipo_operacao_financeira, :presence => true
  validates :valor, :presence => true
  validates :descricao, :length => { :within => 10 ... 255, :nil => true}
  
  
end
