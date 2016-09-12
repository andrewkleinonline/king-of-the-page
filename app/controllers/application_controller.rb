class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?, :prompt_pending?


  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end


  def logged_in?
    !!session[:user_id]
  end


  def prompt_pending?
    Prompt.find_by(pending: true)
  end

end
