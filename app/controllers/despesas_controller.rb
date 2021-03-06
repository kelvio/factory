class DespesasController < ApplicationController
  # GET /despesas
  # GET /despesas.json
  def index
    @despesas = Despesa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @despesas }
    end
  end

  # GET /despesas/1
  # GET /despesas/1.json
  def show
    @despesa = Despesa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @despesa }
    end
  end

  # GET /despesas/new
  # GET /despesas/new.json
  def new
    @despesa = Despesa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @despesa }
    end
  end

  # GET /despesas/1/edit
  def edit
    @despesa = Despesa.find(params[:id])
  end

  # POST /despesas
  # POST /despesas.json
  def create
    @despesa = Despesa.new(params[:despesa])

    respond_to do |format|
      if @despesa.save
        format.html { redirect_to @despesa, :notice => 'Despesa criada com sucesso.' }
        format.json { render :json => @despesa, :status => :created, :location => @despesa }
      else
        format.html { render :action => "new" }
        format.json { render :json => @despesa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /despesas/1
  # PUT /despesas/1.json
  def update
    @despesa = Despesa.find(params[:id])

    respond_to do |format|
      if @despesa.update_attributes(params[:despesa])
        format.html { redirect_to @despesa, :notice => 'Despesa atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @despesa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /despesas/1
  # DELETE /despesas/1.json
  def destroy
    @despesa = Despesa.find(params[:id])
    @despesa.destroy

    respond_to do |format|
      format.html { redirect_to despesas_url }
      format.json { head :no_content }
    end
  end
end
