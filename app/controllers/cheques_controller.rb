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
        ActiveRecord::Base.transaction do
          
          #Cadastra cheque
          if !@cheque.save
            raise ActiveRecord::Rollback
          end
          
          #Registra histórico do cheque
          historico_cheque = HistoricoCheque.new
          historico_cheque.cheque = @cheque
          historico_cheque.descricao = 'Cadastro'
          if !historico_cheque.save
            raise ActiveRecord::Rollback
          end
                              
          #Registra operação financeira
          operacao_financeira = OperacaoFinanceira.new
          operacao_financeira.socio = Socio.find(session[:user_id])
          operacao_financeira.tipo_operacao_financeira = TipoOperacaoFinanceira.find(1) #Operação financeira para cheque
          operacao_financeira.descricao = 'Troca de cheque.'
          operacao_financeira.valor = @cheque.valor
          
          if !operacao_financeira.save
            raise ActiveRecord::Rollback
          end
          
          #Incrementa valor aplicado, decrementa o valor real e atualiza o capital da factory
          capital = Capital.find(1) #Capital da factory
          capital.montante_real -= @cheque.valor
          capital.montante_aplicado += @cheque.valor
          
          if !capital.save
            raise ActiveRecord::Rollback
          end
          
          format.html { redirect_to @cheque, :notice => 'Cheque was successfully created.' }
          format.json { render :json => @cheque, :status => :created, :location => @cheque }
        end
      rescue ActiveRecord::Rollback
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
        if @cheque.update_attributes(params[:cheque])
          
          #Registra histórico do cheque
          historico_cheque = HistoricoCheque.new
          historico_cheque.cheque = @cheque
          historico_cheque.descricao = 'Atualização de informações'
          historico_cheque.situacao_cheque = @cheque.situacao_cheque
          if !historico_cheque.save
            raise ActiveRecord::Rollback
          end
          
          if situacao_anterior.id == 1 #Aberto
            if @cheque.situacao_cheque.id == 2 #Compensado
              
              #Move valor do montante_aplicado e vai para o montante_real
              capital = Capital.find(1) #Caixa da factory
              capital.montante_aplicado -= @cheque.valor
              capital.montante_real += @cheque.valor_atual
              if !capital.save
                raise ActiveRecord::Rollback
              end
            end            
          end
          format.html { redirect_to @cheque, :notice => 'Cheque was successfully updated.' }
          format.json { head :no_content }
        else
          raise ActiveRecord::Rollback
        end
      rescue ActiveRecord::Rollback
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
