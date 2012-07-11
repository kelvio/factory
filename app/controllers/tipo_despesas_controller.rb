class TipoDespesasController < ApplicationController
  # GET /tipo_despesas
  # GET /tipo_despesas.json
  def index
    @tipo_despesas = TipoDespesa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @tipo_despesas }
    end
  end

  # GET /tipo_despesas/1
  # GET /tipo_despesas/1.json
  def show
    @tipo_despesa = TipoDespesa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @tipo_despesa }
    end
  end

  # GET /tipo_despesas/new
  # GET /tipo_despesas/new.json
  def new
    @tipo_despesa = TipoDespesa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @tipo_despesa }
    end
  end

  # GET /tipo_despesas/1/edit
  def edit
    @tipo_despesa = TipoDespesa.find(params[:id])
  end

  # POST /tipo_despesas
  # POST /tipo_despesas.json
  def create
    @tipo_despesa = TipoDespesa.new(params[:tipo_despesa])

    respond_to do |format|
      if @tipo_despesa.save
        format.html { redirect_to @tipo_despesa, :notice => 'Tipo despesa was successfully created.' }
        format.json { render :json => @tipo_despesa, :status => :created, :location => @tipo_despesa }
      else
        format.html { render :action => "new" }
        format.json { render :json => @tipo_despesa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_despesas/1
  # PUT /tipo_despesas/1.json
  def update
    @tipo_despesa = TipoDespesa.find(params[:id])

    respond_to do |format|
      if @tipo_despesa.update_attributes(params[:tipo_despesa])
        format.html { redirect_to @tipo_despesa, :notice => 'Tipo despesa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @tipo_despesa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_despesas/1
  # DELETE /tipo_despesas/1.json
  def destroy
    @tipo_despesa = TipoDespesa.find(params[:id])
    @tipo_despesa.destroy

    respond_to do |format|
      format.html { redirect_to tipo_despesas_url }
      format.json { head :no_content }
    end
  end
end
