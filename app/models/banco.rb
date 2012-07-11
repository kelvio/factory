class Banco < ActiveRecord::Base
  attr_accessible :codigo, :nome
  
  def to_s
    return self.nome
  end
end
