class Item < ActiveRecord::Base
  belongs_to :situacao_item
  belongs_to :despesa
  attr_accessible :valor, :vencimento, :situacao_item, :situacao_item_id, :despesa, :despesa_id
  
  validate :check_situacao, :on => :update
  
  before_update :movimentar_capital_after_update
  
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
  def movimentar_capital_after_update
    situacao_anterior = Item.find(self.id).situacao_item
    if situacao_anterior.id == 1 #Pendente
      if self.situacao_item.id == 2 #Pago              
      
        #Move valor do montante_aplicado e vai para o montante_real
        capital = Capital.find(1) #Caixa da factory
        capital.montante_real -= self.valor
        raise ActiveRecord::Rollback unless capital.save
      end            
    end
  end
  
end
