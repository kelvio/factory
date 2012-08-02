class Cheque < ActiveRecord::Base
  belongs_to :situacao_cheque
  belongs_to :emitente
  belongs_to :tipo_juro
  belongs_to :banco
  belongs_to :cliente
  belongs_to :socio
  
  has_many :historico_cheque
  
  attr_accessible :agencia, :conta, :numero, :valor, :vencimento, :banco, :emitente, :cliente, :socio, :banco_id, :emitente_id, :cliente_id, :socio_id, :situacao_cheque, :situacao_cheque_id, :taxa_juros, :tipo_juro, :tipo_juro_id
  
  after_create :movimentar_capital_after_create
  after_create :registrar_historico_cheque_after_create
  after_update :registrar_historico_cheque_after_update
  before_update :movimentar_capital_before_update
  
  validates :situacao_cheque, :presence => true
  validates :emitente, :presence => true
  validates :tipo_juro, :presence => true
  validates :banco, :presence => true
  validates :cliente, :presence => true
  validates :socio, :presence => true
  validates :agencia, :presence => true
  validates :conta, :presence => true
  validates :numero, :presence => true
  validates :valor, :presence => true
  validates :vencimento, :presence => true
  validates :taxa_juros, :presence => true
  validates_numericality_of :taxa_juros
  validate :has_money
  validate :vencimento_futuro

  #Verifica se a factory tem fundos para realizar a troca
  def has_money
    capital = Capital.find(1)
    if capital.montante_real < self.valor
      errors.add(:cheque_id, "O montante real da factory não pode cobrir o valor do cheque.")
    end
  end
  
  #Verifica se a data de vencimento é uma data futura
  def vencimento_futuro
    errors.add(:vencimento, "A data de vencimento deve ser uma data futura ou no mínimo a data atual") if self.vencimento.mjd < Date.today.mjd
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
    nd = numero_dias
    return (self.valor * (self.taxa_juros / 100)) / (nd > 0 ? nd : 1)
  end
  
  #Obtém o valor atual do cheque.
  #Esse valor é calculado com base na taxa de juros do cheque
  def valor_atual
    #taxa_diaria = (((self.valor * (self.taxa_juros / 100))) / Time.days_in_month(Date.today.month, Date.today.year))
    incremento = valor_taxa_diaria
    val = self.valor
    (0 .. numero_dias_hoje).each do 
        val += incremento
    end
    return val  
  end
  
  
  def movimentar_capital_after_create
  
    #Incrementa valor aplicado, decrementa o valor real e atualiza o capital da factory
    capital = Capital.find(1) #Capital da factory
    capital.montante_real -= self.valor
    capital.montante_aplicado += self.valor
    capital.save!
    
  end
  
  #Movimenta capital da factory do montante aplicado para o montante real
  def movimentar_capital_before_update
    situacao_anterior = Cheque.find(self.id).situacao_cheque
    if situacao_anterior.id == 1 #Aberto
      if self.situacao_cheque.id == 2 #Compensado              
      
        #Move valor do montante_aplicado e vai para o montante_real
        capital = Capital.find(1) #Caixa da factory
        capital.montante_aplicado -= self.valor
        capital.montante_real += self.valor_atual
        raise ActiveRecord::Rollback unless capital.save
      end            
    elsif situacao_anterior.id == 2 #Compensado
      if self.situacao_cheque.id == 1 #Aberto
      
        #Move valor do montante_real e vai para o montante_aplicado
        capital = Capital.find(1) #Caixa da factory
        capital.montante_aplicado += self.valor
        capital.montante_real -= self.valor_atual
        raise ActiveRecord::Rollback unless capital.save
      end
        
    end
  end
  
  #Registra histórico do cheque
  def registrar_historico_cheque_after_create
    raise ActiveRecord::Rollback unless HistoricoCheque.create({:cheque => self, :descricao => 'Cadastro'})
  end
  
  
  def registrar_historico_cheque_after_update
    raise ActiveRecord::Rollback unless HistoricoCheque.create({:cheque => self, :descricao => 'Atualização de informações', :situacao_cheque => self.situacao_cheque})
  end
  
end
