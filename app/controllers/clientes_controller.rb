class ClientesController < ApplicationController
  
  before_filter :authenticate
  
  # GET /clientes
  # GET /clientes.json
  def index
    @clientes = Cliente.where(['nome LIKE ?', "%#{params[:nome]}%"]).paginate(:page => params[:page], :per_page => 20)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clientes }
    end
  end

  # GET /clientes/1
  # GET /clientes/1.json
  def show
    @cliente = Cliente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @cliente }
    end
  end

  # GET /clientes/new
  # GET /clientes/new.json
  def new
    @cliente = Cliente.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @cliente }
    end
  end

  # GET /clientes/1/edit
  def edit
    @cliente = Cliente.find(params[:id])
  end

  # POST /clientes
  # POST /clientes.json
  def create
    @cliente = Cliente.new(params[:cliente])

    respond_to do |format|
      if @cliente.save
        format.html { redirect_to @cliente, :notice => 'Cliente criado com sucesso.' }
        format.json { render :json => @cliente, :status => :created, :location => @cliente }
      else
        format.html { render :action => "new" }
        format.json { render :json => @cliente.errors, :status => :unprocessable_entity }
      end
    end
  end

  def uf_list
    respond_to do |format|
      format.json { render :json => [] }
    end
  end
  
  def new_divida
    @cheques = Cheque.where(:situacao_cheque_id => 1, :cliente_id => params[:id]) #Aberto
  end
  
  def create_divida
    situacao_cheque = SituacaoCheque.find(2) #Compensado
    soma = 0.0
    params[:cheques].each do |id|
      c = Cheque.find(id.to_i)
      c.situacao_cheque = situacao_cheque
      c.save
      soma += c.valor
    end
    
    divida_cliente = DividaCliente.new
    divida_cliente.vencimento = 1.month.from_now.to_date
    divida_cliente.valor = soma
    divida_cliente.cliente = Cliente.find(params[:cliente_id])
    divida_cliente.taxa_juros = 10
    divida_cliente.situacao_divida_cliente = SituacaoDividaCliente.find(1) #Aberto
    divida_cliente.socio = current_user
    divida_cliente.descricao = 'Somatorio de cheques'
    
    respond_to do |format|
      if divida_cliente.save
        format.html { redirect_to divida_cliente, :notice => 'Divida criada com sucesso.' }
      else
        format.html { redirect_to new_divida_path(:id => params[:cliente_id]), :notice => 'Não foi possível criar dívida, tente novamente.'}
      end
    end    
  end

  # PUT /clientes/1
  # PUT /clientes/1.json
  def update
    @cliente = Cliente.find(params[:id])

    respond_to do |format|
      if @cliente.update_attributes(params[:cliente])
        format.html { redirect_to @cliente, :notice => 'Cliente atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @cliente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clientes/1
  # DELETE /clientes/1.json
  def destroy
    @cliente = Cliente.find(params[:id])
    @cliente.destroy

    respond_to do |format|
      format.html { redirect_to clientes_url }
      format.json { head :no_content }
    end
  end
end
