class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
   def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  
  def current_ad
    @current_ad ||= Ad.find(session[:current_ad_id]) if session[:current_ad_id]
  end
  helper_method :current_ad
end
