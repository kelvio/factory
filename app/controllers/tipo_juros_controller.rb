class TipoJurosController < ApplicationController
  # GET /tipo_juros
  # GET /tipo_juros.json
  def index
    @tipo_juros = TipoJuro.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @tipo_juros }
    end
  end

  # GET /tipo_juros/1
  # GET /tipo_juros/1.json
  def show
    @tipo_juro = TipoJuro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @tipo_juro }
    end
  end

  # GET /tipo_juros/new
  # GET /tipo_juros/new.json
  def new
    @tipo_juro = TipoJuro.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @tipo_juro }
    end
  end

  # GET /tipo_juros/1/edit
  def edit
    @tipo_juro = TipoJuro.find(params[:id])
  end

  # POST /tipo_juros
  # POST /tipo_juros.json
  def create
    @tipo_juro = TipoJuro.new(params[:tipo_juro])

    respond_to do |format|
      if @tipo_juro.save
        format.html { redirect_to @tipo_juro, :notice => 'Tipo juro was successfully created.' }
        format.json { render :json => @tipo_juro, :status => :created, :location => @tipo_juro }
      else
        format.html { render :action => "new" }
        format.json { render :json => @tipo_juro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_juros/1
  # PUT /tipo_juros/1.json
  def update
    @tipo_juro = TipoJuro.find(params[:id])

    respond_to do |format|
      if @tipo_juro.update_attributes(params[:tipo_juro])
        format.html { redirect_to @tipo_juro, :notice => 'Tipo juro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @tipo_juro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_juros/1
  # DELETE /tipo_juros/1.json
  def destroy
    @tipo_juro = TipoJuro.find(params[:id])
    @tipo_juro.destroy

    respond_to do |format|
      format.html { redirect_to tipo_juros_url }
      format.json { head :no_content }
    end
  end
end
