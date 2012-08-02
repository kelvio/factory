class SessionsController < ApplicationController
  def new
    if logged_in?
      redirect_to 'home_path'
    else
      render 'new.html.erb'
    end        
  end
    
  def create
    if user = Socio.autenticar(params[:cpf], params[:senha])
      session[:user_id] = user.id
      redirect_to home_path, :notice => "Bem vindo"
	else
	  flash.now[:alert] = "Invalid login/password combination"
	  render :action => 'new'
	end
  end

  def destroy
    reset_session
    redirect_to login_path, :notice => "Você saiu com sucesso"
  end	    
end
