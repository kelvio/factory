class PaisController < ApplicationController
  # GET /pais
  # GET /pais.json
  def index
    @pais = Pai.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @pais }
    end
  end

  # GET /pais/1
  # GET /pais/1.json
  def show
    @pai = Pai.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @pai }
    end
  end

  # GET /pais/new
  # GET /pais/new.json
  def new
    @pai = Pai.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @pai }
    end
  end

  # GET /pais/1/edit
  def edit
    @pai = Pai.find(params[:id])
  end

  # POST /pais
  # POST /pais.json
  def create
    @pai = Pai.new(params[:pai])

    respond_to do |format|
      if @pai.save
        format.html { redirect_to @pai, :notice => 'Pai was successfully created.' }
        format.json { render :json => @pai, :status => :created, :location => @pai }
      else
        format.html { render :action => "new" }
        format.json { render :json => @pai.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pais/1
  # PUT /pais/1.json
  def update
    @pai = Pai.find(params[:id])

    respond_to do |format|
      if @pai.update_attributes(params[:pai])
        format.html { redirect_to @pai, :notice => 'Pai was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @pai.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pais/1
  # DELETE /pais/1.json
  def destroy
    @pai = Pai.find(params[:id])
    @pai.destroy

    respond_to do |format|
      format.html { redirect_to pais_url }
      format.json { head :no_content }
    end
  end
end
