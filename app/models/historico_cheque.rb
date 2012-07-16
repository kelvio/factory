class HistoricoCheque < ActiveRecord::Base
  belongs_to :cheque
  belongs_to :situacao_cheque
  attr_accessible :descricao, :entrada, :saida, :situacao_cheque, :cheque
end
