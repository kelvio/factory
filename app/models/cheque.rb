class Cheque < ActiveRecord::Base
  belongs_to :situacao_cheque
  belongs_to :emitente
  belongs_to :tipo_juro
  belongs_to :banco
  belongs_to :cliente
  belongs_to :socio
  
  has_many :historico_cheque
  
  attr_accessible :agencia, :conta, :numero, :valor, :vencimento, :banco, :emitente, :cliente, :socio, :banco_id, :emitente_id, :cliente_id, :socio_id, :situacao_cheque, :situacao_cheque_id, :taxa_juros, :tipo_juro, :tipo_juro_id
  
  validates :situacao_cheque, :presence => true
  validates :emitente, :presence => true
  validates :tipo_juro, :presence => true
  validates :banco, :presence => true
  validates :cliente, :presence => true
  validates :socio, :presence => true
  validates :agencia, :presence => true
  validates :conta, :presence => true
  validates :numero, :presence => true
  validates :valor, :presence => true
  validates :vencimento, :presence => true
  validates :taxa_juros, :presence => true
  
  #Obtém o valor atual do cheque.
  #Esse valor é calculado com base na taxa de juros do cheque
  def valor_atual
    return self.valor + (((self.valor * (self.taxa_juros / 100))) / Time.days_in_month(Date.today.month, Date.today.year))
  end
end
