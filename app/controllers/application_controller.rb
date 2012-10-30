# -*- encoding : utf-8 -*-
# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
    
  helper_method :current_user  
  helper_method :current_user_controller_type
  
  #before_filter { |c| current_user = c.current_user }
  before_filter :current_user

  protected
  
  def permission_denied
    flash[:error] = "No tienes permitido realizar esta accion, por favor contacta con tu administrador"
    redirect_to root_url
  end
  
  private  
  def current_user_session  
    return @current_user_session if defined?(@current_user_session)  
    @current_user_session = UserSession.find  
  end  
  
  def current_user  
    @current_user = current_user_session && current_user_session.record  
  end 
  
  def current_user_controller_type
    @current_user_controller_type = User.find(current_user).controller_type
  end
end
