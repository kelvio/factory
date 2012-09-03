class OperacaoFinanceira < ActiveRecord::Base
  belongs_to :socio
  belongs_to :tipo_operacao_financeira
  belongs_to :cheque
  belongs_to :item
  belongs_to :divida_cliente
  
  attr_accessible :descricao, :valor, :socio, :tipo_operacao_financeira, :cheque, :item, :divida_cliente, :divida_cliente_id
  
  validates :socio, :presence => true
  validates :tipo_operacao_financeira, :presence => true
  validates :valor, :presence => true
  validates :descricao, :length => { :within => 10 ... 255, :nil => true}
  
  
end
