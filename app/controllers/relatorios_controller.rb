class RelatoriosController < ApplicationController

  def new_operacoes
  end

  def operacoes
    @operacao_financeiras = OperacaoFinanceira.find(:all, :conditions => ['created_at >= ? and created_at <= ? ', Date.new(params[:inicio][:year].to_i, params[:inicio][:month].to_i, params[:inicio][:day].to_i), Date.new(params[:fim][:year].to_i, params[:fim][:month].to_i, params[:fim][:day].to_i)])
  end
  
  def new_clientes 
    
  end
  
  def clientes
  end
  
  def emitentes
    cheques = Cheque.group(:emitente_id, :conditions => ['created_at >= ? and created_at <= ? ', Date.new(params[:inicio][:year].to_i, params[:inicio][:month].to_i, params[:inicio][:day].to_i), Date.new(params[:fim][:year].to_i, params[:fim][:month].to_i, params[:fim][:day].to_i)])
    for cheque in cheques
    
    end
  end
  
  def cheques
  end
  
end
