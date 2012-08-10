class Cliente < ActiveRecord::Base
  attr_accessible :nome, :tipo_cliente, :tipo_cliente_id, :cnpj, :logradouro, :bairro, :cep, :numero, :email, :telefone, :cpf, :municipio_dominio, :municipio_dominio_id
  belongs_to :tipo_cliente
  belongs_to :municipio_dominio
  
  validates :nome, :presence => true, :length => { :within => 10 ... 255}
  
  def to_s
    return self.nome
  end
end
