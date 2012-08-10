class CalculadorasController < ApplicationController

  def show  
    respond_to do |format|
      format.html {render :layout => nil} # index.html.erb
    end
  end
  
end
