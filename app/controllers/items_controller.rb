class ItemsController < ApplicationController
  # GET /items
  # GET /items.json
  def index
    @items = Item.paginate(:page => params[:page], :per_page => 20)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @items }
    end
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @item = Item.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @item }
    end
  end

  # GET /items/new
  # GET /items/new.json
  def new
    @item = Item.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @item }
    end
  end

  # GET /items/1/edit
  def edit
    @item = Item.find(params[:id])
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(params[:item])

    respond_to do |format|
      begin
        Item.transaction do          
          @item.save!  
          OperacaoFinanceira.create({:socio => Socio.find(session[:user_id]),
                  :tipo_operacao_financeira => TipoOperacaoFinanceira.find(2), #Conta
                  :descricao => 'Conta / Despesa paga.',
                  :valor => @item.valor}) if @item.situacao_item.id == 2 #Pago
        end 
        format.html { redirect_to @item, :notice => 'Item cadastrado com sucesso.' }
        format.json { render :json => @item, :status => :created, :location => @item }
      rescue
        format.html { render :action => "new" }
        format.json { render :json => @item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /items/1
  # PUT /items/1.json
  def update
    @item = Item.find(params[:id])

    respond_to do |format|
      begin
        Item.transaction do
          situacao_antiga = Item.find(@item.id).situacao_item
          if @item.update_attributes(params[:item])            
            if situacao_antiga.id == 1 #Pendente
              if @item.situacao_item.id == 2 #Pago  
                OperacaoFinanceira.create({:socio => Socio.find(session[:user_id]),
                  :tipo_operacao_financeira => TipoOperacaoFinanceira.find(2), #Conta
                  :descricao => 'Conta / Despesa paga.',
                  :valor => @item.valor,
                  :item => @item})
              end
            end
            format.html { redirect_to @item, :notice => 'Item atualizado com sucesso.' }
            format.json { head :no_content }
          else
            raise ActiveRecord::Rollback  
          end
        end
      rescue ActiveRecord::Rollback, ActiveRecord::RecordInvalid
        format.html { render :action => "edit" }
        format.json { render :json => @item.errors, :status => :unprocessable_entity }
      end      
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html { redirect_to items_url }
      format.json { head :no_content }
    end
  end
end
