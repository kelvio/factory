class ApplicationController < ActionController::Base
    
  VERSION = "0.1"
  
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
      I18n.locale = params[:locale] unless params[:locale].blank?
    end
  
    # Returns the currently logget in on nil if there isn't one
    def current_user
        return unless session[:user_id]
        @current_user ||= Socio.find_by_id(session[:user_id])
    end
    
    # Make current_user available in templates as a helper
    helper_method :current_user
    
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
        redirect_to login_path, :notice => "Please log in to continue" and return false
    end
end
