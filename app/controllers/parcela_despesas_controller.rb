class ParcelaDespesasController < ApplicationController
  # GET /parcela_despesas
  # GET /parcela_despesas.json
  def index
    @parcela_despesas = ParcelaDespesa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @parcela_despesas }
    end
  end

  # GET /parcela_despesas/1
  # GET /parcela_despesas/1.json
  def show
    @parcela_despesa = ParcelaDespesa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @parcela_despesa }
    end
  end

  # GET /parcela_despesas/new
  # GET /parcela_despesas/new.json
  def new
    @parcela_despesa = ParcelaDespesa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @parcela_despesa }
    end
  end

  # GET /parcela_despesas/1/edit
  def edit
    @parcela_despesa = ParcelaDespesa.find(params[:id])
  end

  # POST /parcela_despesas
  # POST /parcela_despesas.json
  def create
    @parcela_despesa = ParcelaDespesa.new(params[:parcela_despesa])

    respond_to do |format|
      if @parcela_despesa.save
        format.html { redirect_to @parcela_despesa, :notice => 'Parcela despesa was successfully created.' }
        format.json { render :json => @parcela_despesa, :status => :created, :location => @parcela_despesa }
      else
        format.html { render :action => "new" }
        format.json { render :json => @parcela_despesa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /parcela_despesas/1
  # PUT /parcela_despesas/1.json
  def update
    @parcela_despesa = ParcelaDespesa.find(params[:id])

    respond_to do |format|
      if @parcela_despesa.update_attributes(params[:parcela_despesa])
        format.html { redirect_to @parcela_despesa, :notice => 'Parcela despesa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @parcela_despesa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /parcela_despesas/1
  # DELETE /parcela_despesas/1.json
  def destroy
    @parcela_despesa = ParcelaDespesa.find(params[:id])
    @parcela_despesa.destroy

    respond_to do |format|
      format.html { redirect_to parcela_despesas_url }
      format.json { head :no_content }
    end
  end
end
