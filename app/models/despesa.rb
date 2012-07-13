class Despesa < ActiveRecord::Base
  belongs_to :tipo_despesa
  attr_accessible :nome, :valor, :tipo_despesa, :tipo_despesa_id
  
  validates :nome, :presence => true, :length => { :within => 4 ... 255}
  validates :tipo_despesa, :presence => true
  def to_s
    return self.nome
  end
end
