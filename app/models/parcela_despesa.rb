class ParcelaDespesa < ActiveRecord::Base
  belongs_to :despesa
  attr_accessible :valor, :vencimento, :despesa, :despesa_id
  
  validates :despesa, :presence => true
  validates :valor, :presence => true, :numericality => true
  validates :vencimento, :presence => true
end
