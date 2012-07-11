class TipoOperacaoFinanceirasController < ApplicationController
  # GET /tipo_operacao_financeiras
  # GET /tipo_operacao_financeiras.json
  def index
    @tipo_operacao_financeiras = TipoOperacaoFinanceira.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @tipo_operacao_financeiras }
    end
  end

  # GET /tipo_operacao_financeiras/1
  # GET /tipo_operacao_financeiras/1.json
  def show
    @tipo_operacao_financeira = TipoOperacaoFinanceira.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @tipo_operacao_financeira }
    end
  end

  # GET /tipo_operacao_financeiras/new
  # GET /tipo_operacao_financeiras/new.json
  def new
    @tipo_operacao_financeira = TipoOperacaoFinanceira.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @tipo_operacao_financeira }
    end
  end

  # GET /tipo_operacao_financeiras/1/edit
  def edit
    @tipo_operacao_financeira = TipoOperacaoFinanceira.find(params[:id])
  end

  # POST /tipo_operacao_financeiras
  # POST /tipo_operacao_financeiras.json
  def create
    @tipo_operacao_financeira = TipoOperacaoFinanceira.new(params[:tipo_operacao_financeira])

    respond_to do |format|
      if @tipo_operacao_financeira.save
        format.html { redirect_to @tipo_operacao_financeira, :notice => 'Tipo operacao financeira was successfully created.' }
        format.json { render :json => @tipo_operacao_financeira, :status => :created, :location => @tipo_operacao_financeira }
      else
        format.html { render :action => "new" }
        format.json { render :json => @tipo_operacao_financeira.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_operacao_financeiras/1
  # PUT /tipo_operacao_financeiras/1.json
  def update
    @tipo_operacao_financeira = TipoOperacaoFinanceira.find(params[:id])

    respond_to do |format|
      if @tipo_operacao_financeira.update_attributes(params[:tipo_operacao_financeira])
        format.html { redirect_to @tipo_operacao_financeira, :notice => 'Tipo operacao financeira was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @tipo_operacao_financeira.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_operacao_financeiras/1
  # DELETE /tipo_operacao_financeiras/1.json
  def destroy
    @tipo_operacao_financeira = TipoOperacaoFinanceira.find(params[:id])
    @tipo_operacao_financeira.destroy

    respond_to do |format|
      format.html { redirect_to tipo_operacao_financeiras_url }
      format.json { head :no_content }
    end
  end
end
