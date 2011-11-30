class SettingsController < ApplicationController
  def show
    render layout: 'mobile'
  end

  def create
    puts params.to_yaml
    redirect_to action: 'show'
  end
end
