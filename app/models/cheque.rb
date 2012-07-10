class Cheque < ActiveRecord::Base
  belongs_to :banco
  belongs_to :emitente
  belongs_to :cliente
  belongs_to :socio
  attr_accessible :agencia, :conta, :numero, :valor, :vencimento
end
