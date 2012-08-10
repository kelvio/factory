class MunicipioDominio < ActiveRecord::Base
  belongs_to :uf
  attr_accessible :nome, :uf, :uf_id
end
