class SituacaoChequesController < ApplicationController
  # GET /situacao_cheques
  # GET /situacao_cheques.json
  def index
    @situacao_cheques = SituacaoCheque.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @situacao_cheques }
    end
  end

  # GET /situacao_cheques/1
  # GET /situacao_cheques/1.json
  def show
    @situacao_cheque = SituacaoCheque.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @situacao_cheque }
    end
  end

  # GET /situacao_cheques/new
  # GET /situacao_cheques/new.json
  def new
    @situacao_cheque = SituacaoCheque.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @situacao_cheque }
    end
  end

  # GET /situacao_cheques/1/edit
  def edit
    @situacao_cheque = SituacaoCheque.find(params[:id])
  end

  # POST /situacao_cheques
  # POST /situacao_cheques.json
  def create
    @situacao_cheque = SituacaoCheque.new(params[:situacao_cheque])

    respond_to do |format|
      if @situacao_cheque.save
        format.html { redirect_to @situacao_cheque, :notice => 'Situacao cheque was successfully created.' }
        format.json { render :json => @situacao_cheque, :status => :created, :location => @situacao_cheque }
      else
        format.html { render :action => "new" }
        format.json { render :json => @situacao_cheque.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /situacao_cheques/1
  # PUT /situacao_cheques/1.json
  def update
    @situacao_cheque = SituacaoCheque.find(params[:id])

    respond_to do |format|
      if @situacao_cheque.update_attributes(params[:situacao_cheque])
        format.html { redirect_to @situacao_cheque, :notice => 'Situacao cheque was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @situacao_cheque.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /situacao_cheques/1
  # DELETE /situacao_cheques/1.json
  def destroy
    @situacao_cheque = SituacaoCheque.find(params[:id])
    @situacao_cheque.destroy

    respond_to do |format|
      format.html { redirect_to situacao_cheques_url }
      format.json { head :no_content }
    end
  end
end
