class AdminController < ApplicationController
  def login
    session[:admin] = true
    redirect_to '/'
  end

  def logout
    session[:admin] = nil
    redirect_to '/'
  end
end
