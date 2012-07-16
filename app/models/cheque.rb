class Cheque < ActiveRecord::Base
  belongs_to :situacao_cheque
  belongs_to :emitente
  belongs_to :tipo_juro
  belongs_to :banco
  belongs_to :cliente
  belongs_to :socio
  
  has_many :historico_cheque
  
  attr_accessible :agencia, :conta, :numero, :valor, :vencimento, :banco, :emitente, :cliente, :socio, :banco_id, :emitente_id, :cliente_id, :socio_id, :situacao_cheque, :situacao_cheque_id, :taxa_juros, :tipo_juro, :tipo_juro_id
  
  #validates :situacao_cheque, :presence => true
  #validates :emitente, :presence => true
  #validates :tipo_juro, :presence => true
  #validates :banco, :presence => true
  #validates :cliente, :presence => true
  #validates :socio, :presence => true
  #validates :agencia, :presence => true
  #validates :conta, :presence => true
  #validates :numero, :presence => true
  #validates :valor, :presence => true
  #validates :vencimento, :presence => true
  #validates :taxa_juros, :presence => true
  #validate :has_money
  
  #Verifica se a factory tem fundos para realizar a troca
  def has_money
    capital = Capital.find(1)
    errors.add(:cheque_id, "O montante real da factory não pode cobrir o valor do cheque.") if capital.montante_real < self.valor
  end
  
  #Número de dias de prazo para o cheque
  def numero_dias
    return self.vencimento.mjd - self.created_at.to_date.mjd
  end
  
  #Número de dias passados desde o cadastro do cheque até hoje
  def numero_dias_hoje
    return self.created_at.to_date.mjd - Date.today.mjd
  end
  
  def valor_taxa_diaria
    return (self.valor * (self.taxa_juros / 100)) / numero_dias
  end
  
  #Obtém o valor atual do cheque.
  #Esse valor é calculado com base na taxa de juros do cheque
  def valor_atual
    #taxa_diaria = (((self.valor * (self.taxa_juros / 100))) / Time.days_in_month(Date.today.month, Date.today.year))
    incremento = valor_taxa_diaria
    val = self.valor
    (1 .. numero_dias_hoje).each do 
        val += incremento
    end
    return val
    #(self.created_at.year .. self.vencimento.year).each do |i|      
    #  (self.created_at.month .. self.vencimento.month) do |j| 
    #    (self.created_at.)     
    #  end
    #  puts "Value of local variable is #{i}"
    #end
    #return self.valor
  end
end
