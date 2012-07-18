class ChequesController < ApplicationController

  before_filter :authenticate

  # GET /cheques
  # GET /cheques.json
  def index
    @cheques = Cheque.where(['numero LIKE ?', "%#{params[:numero]}%"]).paginate(:page => params[:page], :per_page => 20)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @cheques }
    end
  end

  # GET /cheques/1
  # GET /cheques/1.json
  def show
    @cheque = Cheque.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @cheque }
    end
  end

  # GET /cheques/new
  # GET /cheques/new.json
  def new
    @cheque = Cheque.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @cheque }
    end
  end

  # GET /cheques/1/edit
  def edit
    @cheque = Cheque.find(params[:id])
  end

  # POST /cheques
  # POST /cheques.json
  def create    
    @cheque = Cheque.new(params[:cheque])
    @cheque.socio = Socio.find(session[:user_id])
    
    respond_to do |format|
      begin
        Cheque.transaction do          
          @cheque.save!   
          OperacaoFinanceira.create({:socio => Socio.find(session[:user_id]),
           :tipo_operacao_financeira => TipoOperacaoFinanceira.find(1),
           :descricao => 'Troca de cheque',
           :valor => @cheque.valor})                                                                                      
        end        
        format.html { redirect_to @cheque, :notice => 'Cheque was successfully created.' }
        format.json { render :json => @cheque, :status => :created, :location => @cheque }
      rescue ActiveRecord::Rollback, ActiveRecord::RecordInvalid
        format.html { render :action => "new" }
        format.json { render :json => @cheque.errors, :status => :unprocessable_entity }
      end            
    end    
  end

  # PUT /cheques/1
  # PUT /cheques/1.json
  def update
    @cheque = Cheque.find(params[:id])
    
    #Guarda referência à situação anterior
    #para verificar se as operações foram atualizadas
    situacao_anterior = @cheque.situacao_cheque
    
    respond_to do |format|
      begin
        Cheque.transaction do 
          if @cheque.update_attributes(params[:cheque])                                                  
            format.html { redirect_to @cheque, :notice => 'Cheque was successfully updated.' }
            format.json { head :no_content }
          else
            raise ActiveRecord::Rollback
          end
        end        
      rescue ActiveRecord::Rollback, ActiveRecord::RecordInvalid
        format.html { render :action => "edit" }
        format.json { render :json => @cheque.errors, :status => :unprocessable_entity }
      end      
    end
  end

  # DELETE /cheques/1
  # DELETE /cheques/1.json
  def destroy
    @cheque = Cheque.find(params[:id])
    @cheque.destroy

    respond_to do |format|
      format.html { redirect_to cheques_url }
      format.json { head :no_content }
    end
  end
end
