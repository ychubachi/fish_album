class AdminController < ApplicationController
  def index
  end
  
  def login
    session[:admin] = true
    redirect_to action: 'index'
  end

  def logout
    session[:admin] = nil
    redirect_to '/'
  end
end
