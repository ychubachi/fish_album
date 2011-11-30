class AdminController < ApplicationController
  def index
    render layout: 'admin'
  end
  
  def login
    session[:admin] = true
    redirect_to action: 'index'
  end

  def logout
    session[:admin] = nil
    redirect_to action: 'index'
  end
end
