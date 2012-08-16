class RelatoriosController < ApplicationController

  def new_operacoes
  end

  def operacoes
    @operacao_financeiras = OperacaoFinanceira.find(:all, :conditions => ['created_at >= ? and created_at <= ? ', Date.new(params[:inicio][:year].to_i, params[:inicio][:month].to_i, params[:inicio][:day].to_i), Date.new(params[:fim][:year].to_i, params[:fim][:month].to_i, params[:fim][:day].to_i)])
  end
  
  def new_clientes     
  end
  
  def clientes
    @cliente = Cliente.find(params[:cliente])
    @operacao_financeiras = @cliente.cheque.collect { |c| c.operacao_financeira.find(:all, :conditions => ['created_at >= ? and created_at <= ? ', Date.new(params[:inicio][:year].to_i, params[:inicio][:month].to_i, params[:inicio][:day].to_i), Date.new(params[:fim][:year].to_i, params[:fim][:month].to_i, params[:fim][:day].to_i)]) }
  end
  
  def emitentes    
    @emitente = Emitente.find(params[:emitente])
    @operacao_financeiras = @emitente.cheque.collect { |c| c.operacao_financeira.find(:all, :conditions => ['created_at >= ? and created_at <= ? ', Date.new(params[:inicio][:year].to_i, params[:inicio][:month].to_i, params[:inicio][:day].to_i), Date.new(params[:fim][:year].to_i, params[:fim][:month].to_i, params[:fim][:day].to_i)]) } #OperacaoFinanceira.find(:all, :conditions => ['created_at >= ? and created_at <= ? ', Date.new(params[:inicio][:year].to_i, params[:inicio][:month].to_i, params[:inicio][:day].to_i), Date.new(params[:fim][:year].to_i, params[:fim][:month].to_i, params[:fim][:day].to_i)])
  end
  
  def cheques
    @cheques = Cheque.find(:all, :conditions => ['created_at >= ? and created_at <= ? ', Date.new(params[:inicio][:year].to_i, params[:inicio][:month].to_i, params[:inicio][:day].to_i), Date.new(params[:fim][:year].to_i, params[:fim][:month].to_i, params[:fim][:day].to_i)])
  end
  
end
