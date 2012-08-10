class Municipio < ActiveRecord::Base
  belongs_to :uf
  attr_accessible :nome
end
