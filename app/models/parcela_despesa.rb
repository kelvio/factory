class ParcelaDespesa < ActiveRecord::Base
  belongs_to :despesa
  attr_accessible :valor, :vencimento
end
