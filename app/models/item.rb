class Item < ActiveRecord::Base
  belongs_to :situacao_item
  belongs_to :despesa
  
  has_many :operacao_financeira
  
  attr_accessible :valor, :vencimento, :situacao_item, :situacao_item_id, :despesa, :despesa_id
  
  validate :check_situacao, :on => :update
  
  before_update :movimentar_capital_before_update
  
  after_create :movimentar_capital_after_create
  
  def check_situacao
    situacao_antiga = Item.find(self.id).situacao_item
    if situacao_antiga.id == 1 #Pendente
      if self.situacao_item.id == 2 #Pago       
        errors.add(:item_id, "O montante real da factory não pode cobrir o valor do ítem.") unless has_money
      end
    end
  end
  
  #Verifica se a factory tem fundos para realizar a troca
  def has_money
    return true unless Capital.find(1).montante_real < self.valor
  end
  
  #Movimenta capital da factory do montante aplicado para o montante real
  def movimentar_capital_before_update
    situacao_anterior = Item.find(self.id).situacao_item
    if situacao_anterior.id == 1 #Pendente
      if self.situacao_item.id == 2 #Pago              
        update_capital               
      end            
    end
  end
  
  def movimentar_capital_after_create
    update_capital if self.situacao_item.id == 2 #Pago      
  end
  
  def update_capital
    #Move valor do montante_aplicado e vai para o montante_real
    capital = Capital.find(1) #Caixa da factory
    capital.montante_real -= self.valor
    raise ActiveRecord::Rollback unless capital.save
    update_capital_socios
  end
  
  def update_capital_socios
    #Verifica o tipo de despesa e atualiza o valor de cada sócio
    tipo_despesa_id = self.despesa.tipo_despesa.id
    socios = Socio.all
    socios.each do |socio|          
      socio.capital -= self.valor * (socio.percentual / 100) if tipo_despesa_id == 1 #Societária
      socio.capital -= self.valor / socios.size if tipo_despesa_id == 2 #Fixa                    
      raise ActiveRecord::Rollback unless socio.save          
    end
  end
  
end
