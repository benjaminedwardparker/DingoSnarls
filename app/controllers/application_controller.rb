class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_dingo
    @current_dingo = Dingo.find session[:dingo_id]
  end
end
