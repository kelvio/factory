class OperacaoFinanceirasController < ApplicationController
  # GET /operacao_financeiras
  # GET /operacao_financeiras.json
  def index
    @operacao_financeiras = OperacaoFinanceira.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @operacao_financeiras }
    end
  end

  # GET /operacao_financeiras/1
  # GET /operacao_financeiras/1.json
  def show
    @operacao_financeira = OperacaoFinanceira.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @operacao_financeira }
    end
  end

  # GET /operacao_financeiras/new
  # GET /operacao_financeiras/new.json
  def new
    @operacao_financeira = OperacaoFinanceira.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @operacao_financeira }
    end
  end

  # GET /operacao_financeiras/1/edit
  def edit
    @operacao_financeira = OperacaoFinanceira.find(params[:id])
  end

  # POST /operacao_financeiras
  # POST /operacao_financeiras.json
  def create
    @operacao_financeira = OperacaoFinanceira.new(params[:operacao_financeira])

    respond_to do |format|
      if @operacao_financeira.save
        format.html { redirect_to @operacao_financeira, :notice => 'Operacao financeira was successfully created.' }
        format.json { render :json => @operacao_financeira, :status => :created, :location => @operacao_financeira }
      else
        format.html { render :action => "new" }
        format.json { render :json => @operacao_financeira.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /operacao_financeiras/1
  # PUT /operacao_financeiras/1.json
  def update
    @operacao_financeira = OperacaoFinanceira.find(params[:id])

    respond_to do |format|
      if @operacao_financeira.update_attributes(params[:operacao_financeira])
        format.html { redirect_to @operacao_financeira, :notice => 'Operacao financeira was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @operacao_financeira.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /operacao_financeiras/1
  # DELETE /operacao_financeiras/1.json
  def destroy
    @operacao_financeira = OperacaoFinanceira.find(params[:id])
    @operacao_financeira.destroy

    respond_to do |format|
      format.html { redirect_to operacao_financeiras_url }
      format.json { head :no_content }
    end
  end
end
