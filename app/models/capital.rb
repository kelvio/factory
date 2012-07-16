class Capital < ActiveRecord::Base
  attr_accessible :montante_real, :montante_aplicado
  
  validates :montante_real, :presence => true,  :numericality => true  
  validates :montante_aplicado, :presence => true,  :numericality => true  
  
  def montante
    return montante_real + montante_aplicado
  end
  
end
