class LoteChequesController < ApplicationController
  # GET /lote_cheques
  # GET /lote_cheques.json
  def index
    @lote_cheques = LoteCheque.where(['nome LIKE ?', "%#{params[:nome]}%"]).paginate(:page => params[:page], :per_page => 20)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @lote_cheques }
    end
  end

  # GET /lote_cheques/1
  # GET /lote_cheques/1.json
  def show
    @lote_cheque = LoteCheque.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @lote_cheque }
    end
  end

  # GET /lote_cheques/new
  # GET /lote_cheques/new.json
  def new
    @lote_cheque = LoteCheque.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @lote_cheque }
    end
  end

  # GET /lote_cheques/1/edit
  def edit
    @lote_cheque = LoteCheque.find(params[:id])
  end

  # POST /lote_cheques
  # POST /lote_cheques.json
  def create
    @lote_cheque = LoteCheque.new(params[:lote_cheque])

    respond_to do |format|
      if @lote_cheque.save
        format.html { redirect_to @lote_cheque, :notice => 'Lote cheque was successfully created.' }
        format.json { render :json => @lote_cheque, :status => :created, :location => @lote_cheque }
      else
        format.html { render :action => "new" }
        format.json { render :json => @lote_cheque.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lote_cheques/1
  # PUT /lote_cheques/1.json
  def update
    @lote_cheque = LoteCheque.find(params[:id])

    respond_to do |format|
      if @lote_cheque.update_attributes(params[:lote_cheque])
        format.html { redirect_to @lote_cheque, :notice => 'Lote cheque was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @lote_cheque.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lote_cheques/1
  # DELETE /lote_cheques/1.json
  def destroy
    @lote_cheque = LoteCheque.find(params[:id])
    @lote_cheque.destroy

    respond_to do |format|
      format.html { redirect_to lote_cheques_url }
      format.json { head :no_content }
    end
  end
end
