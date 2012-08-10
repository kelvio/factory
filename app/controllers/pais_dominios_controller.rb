class PaisDominiosController < ApplicationController
  # GET /pais_dominios
  # GET /pais_dominios.json
  def index
    @pais_dominios = PaisDominio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @pais_dominios }
    end
  end

  # GET /pais_dominios/1
  # GET /pais_dominios/1.json
  def show
    @pais_dominio = PaisDominio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @pais_dominio }
    end
  end

  # GET /pais_dominios/new
  # GET /pais_dominios/new.json
  def new
    @pais_dominio = PaisDominio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @pais_dominio }
    end
  end

  # GET /pais_dominios/1/edit
  def edit
    @pais_dominio = PaisDominio.find(params[:id])
  end

  # POST /pais_dominios
  # POST /pais_dominios.json
  def create
    @pais_dominio = PaisDominio.new(params[:pais_dominio])

    respond_to do |format|
      if @pais_dominio.save
        format.html { redirect_to @pais_dominio, :notice => 'Pais dominio was successfully created.' }
        format.json { render :json => @pais_dominio, :status => :created, :location => @pais_dominio }
      else
        format.html { render :action => "new" }
        format.json { render :json => @pais_dominio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pais_dominios/1
  # PUT /pais_dominios/1.json
  def update
    @pais_dominio = PaisDominio.find(params[:id])

    respond_to do |format|
      if @pais_dominio.update_attributes(params[:pais_dominio])
        format.html { redirect_to @pais_dominio, :notice => 'Pais dominio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @pais_dominio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pais_dominios/1
  # DELETE /pais_dominios/1.json
  def destroy
    @pais_dominio = PaisDominio.find(params[:id])
    @pais_dominio.destroy

    respond_to do |format|
      format.html { redirect_to pais_dominios_url }
      format.json { head :no_content }
    end
  end
end
