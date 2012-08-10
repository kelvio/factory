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
      notice = t('general.welcome') + ' ' + self.current_user.nome + "."
      cv = Cheque.get_lista_cheques_vencendo
      if cv.size > 0
        notice += 'Você tem '+ cv.size.to_s + '  cheque (s) vencendo nos próximos 7 dias.'
      end
      redirect_to home_path, :notice => notice
	else
	  redirect_to login_path, :notice => 'Login ou senha inválidos'
	end
  end

  def destroy
    reset_session
    redirect_to login_path
  end	    
end
