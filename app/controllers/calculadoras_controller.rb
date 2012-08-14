class CalculadorasController < ApplicationController

  def show  
    respond_to do |format|
      format.html {render :layout => nil} # index.html.erb
    end
  end
  
  def create
    @cheque = Cheque.new
    @cheque.valor = params[:valor]
    @cheque.vencimento = Date.new(params[:date][:year].to_i, params[:date][:month].to_i, params[:date][:day].to_i)
    @cheque.data_troca = Date.new
    @cheque.taxa_juros = params[:taxa]
    respond_to do |format|
      format.js
    end
  end
  
end
