require 'spec_helper'

describe AdminController do

  describe "GET 'login'" do
    it "returns http success" do
      get 'login'
      response.should be_success
    end

    it "sets session[:admin] to be true" do
      get 'login'
      session[:admin].should be_true
    end
  end

  describe "GET 'logout'" do
    it "redirects to /" do
      get 'logout'
      response.should redirect_to('/')
    end

    it "sets session[:admin] to be nil" do
      get 'logout'
      session[:admin].should be_nil
    end
  end
end
