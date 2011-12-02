class AdminController < ApplicationController
  def login
    session[:admin] = true
  end

  def logout
    session[:admin] = nil
    redirect_to '/'
  end
end
