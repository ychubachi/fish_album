class ApplicationController < ActionController::Base
  protect_from_forgery

  def admin?
    return session[:admin] == true
  end
end
