class Despesa < ActiveRecord::Base
  belongs_to :tipo_despesa
  attr_accessible :nome, :valor, :tipo_despesa, :tipo_despesa_id
  
  def to_s
    return self.nome
  end
end
