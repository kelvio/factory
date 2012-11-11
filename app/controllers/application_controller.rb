class ApplicationController < ActionController::Base
    
  VERSION = "0.8"
  
  protect_from_forgery
  before_filter :set_locale
  
     
  protected       
  
    def application_version
        return VERSION
    end
  
    #Make application_version available
    helper_method :application_version
    
    # Set the locale from parameters
    def set_locale
      I18n.default_locale = :pt_BR
      I18n.locale = params[:locale] unless params[:locale].blank?
      I18n.locale = I18n.default_locale if params[:locale].blank?
    end
  
    def money_symbol
      return 'R$' if I18n.locale == :pt_BR
    end
    
    helper_method :money_symbol
  
    def calendar_fields_order
      return [:day, :month, :year] if I18n.locale == :pt_BR
      return [:year, :month, :day] if I18n.locale == :en
    end
    
    helper_method :calendar_fields_order
  
    def money_separator
      return ',' if I18n.locale == :pt_BR
    end
    
    helper_method :money_separator
    
    def money_delimiter
      return '.' if I18n.locale == :pt_BR
    end

    helper_method :money_delimiter
  
    # Returns the currently logget in on nil if there isn't one
    def current_user
        return unless session[:user_id]
        @current_user ||= Socio.find_by_id(session[:user_id])
    end
    
    # Make current_user available in templates as a helper
    helper_method :current_user
    
    def montante_aplicado
      return Capital.find(1).montante_aplicado #Capital da factory        
    end
    
    def montante_real
      return Capital.find(1).montante_real #Capital da factory        
    end
    
    def montante_factory
      return montante_real + montante_aplicado
    end
    
    #Disponibiliza métodos para os templates como um helper
    helper_method :montante_real
    helper_method :montante_aplicado
    helper_method :montante_factory
    
    # Filter method to enforce a login requirement
    # Apply as a before_fileter on any controller want to protected
    def authenticate
        logged_in? ? true : access_denied
    end
    
    # Predicate method to test for a logged in user
    def logged_in?
        current_user.is_a? Socio
    end
    
    # Make logged_in? available in templates as a helper
    helper_method :logged_in?
    
    def access_denied
        redirect_to login_path, :notice => t('general.please_login_to_continue') and return false
    end
end
