class Uf < ActiveRecord::Base
  belongs_to :pais_dominio
  attr_accessible :nome, :pais_dominio
end
