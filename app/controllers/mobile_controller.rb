class MobileController < ApplicationController
  def index
  end

  def settings
    puts env('HTTP_METHOD')
  end

  def update_settings
    puts params.to_yaml
    redirect_to '/'
  end
end
