class EmitentesController < ApplicationController

  before_filter :authenticate
  
  # GET /emitentes
  # GET /emitentes.json
  def index
    @emitentes = Emitente.where(['nome LIKE ?', "%#{params[:nome]}%"]).paginate(:page => params[:page], :per_page => 20)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @emitentes }
    end
  end

  # GET /emitentes/1
  # GET /emitentes/1.json
  def show
    @emitente = Emitente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @emitente }
    end
  end

  # GET /emitentes/new
  # GET /emitentes/new.json
  def new
    @emitente = Emitente.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @emitente }
    end
  end

  # GET /emitentes/1/edit
  def edit
    @emitente = Emitente.find(params[:id])
  end

  # POST /emitentes
  # POST /emitentes.json
  def create
    @emitente = Emitente.new(params[:emitente])

    respond_to do |format|
      if @emitente.save
        format.html { redirect_to @emitente, :notice => 'Emitente was successfully created.' }
        format.json { render :json => @emitente, :status => :created, :location => @emitente }
      else
        format.html { render :action => "new" }
        format.json { render :json => @emitente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /emitentes/1
  # PUT /emitentes/1.json
  def update
    @emitente = Emitente.find(params[:id])

    respond_to do |format|
      if @emitente.update_attributes(params[:emitente])
        format.html { redirect_to @emitente, :notice => 'Emitente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @emitente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /emitentes/1
  # DELETE /emitentes/1.json
  def destroy
    @emitente = Emitente.find(params[:id])
    @emitente.destroy

    respond_to do |format|
      format.html { redirect_to emitentes_url }
      format.json { head :no_content }
    end
  end
end
