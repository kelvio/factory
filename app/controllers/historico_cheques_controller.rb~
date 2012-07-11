class HistoricoChequesController < ApplicationController
  # GET /historico_cheques
  # GET /historico_cheques.json
  def index
    @historico_cheques = HistoricoCheque.paginate(:page => params[:page], :per_page => 20)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @historico_cheques }
    end
  end

  # GET /historico_cheques/1
  # GET /historico_cheques/1.json
  def show
    @historico_cheque = HistoricoCheque.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @historico_cheque }
    end
  end

  # GET /historico_cheques/new
  # GET /historico_cheques/new.json
  def new
    @historico_cheque = HistoricoCheque.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @historico_cheque }
    end
  end

  # GET /historico_cheques/1/edit
  def edit
    @historico_cheque = HistoricoCheque.find(params[:id])
  end

  # POST /historico_cheques
  # POST /historico_cheques.json
  def create
    @historico_cheque = HistoricoCheque.new(params[:historico_cheque])

    respond_to do |format|
      if @historico_cheque.save
        format.html { redirect_to @historico_cheque, :notice => 'Historico cheque was successfully created.' }
        format.json { render :json => @historico_cheque, :status => :created, :location => @historico_cheque }
      else
        format.html { render :action => "new" }
        format.json { render :json => @historico_cheque.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /historico_cheques/1
  # PUT /historico_cheques/1.json
  def update
    @historico_cheque = HistoricoCheque.find(params[:id])

    respond_to do |format|
      if @historico_cheque.update_attributes(params[:historico_cheque])
        format.html { redirect_to @historico_cheque, :notice => 'Historico cheque was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @historico_cheque.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /historico_cheques/1
  # DELETE /historico_cheques/1.json
  def destroy
    @historico_cheque = HistoricoCheque.find(params[:id])
    @historico_cheque.destroy

    respond_to do |format|
      format.html { redirect_to historico_cheques_url }
      format.json { head :no_content }
    end
  end
end
