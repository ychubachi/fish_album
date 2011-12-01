class SearchesController < ApplicationController
  def show
    if admin?
      render
    else
      render template: 'searches/show.mobile', layout: 'mobile'
    end
  end

  def create
    puts params.to_yaml
    
    if admin?
      render
    else
      render template: 'searches/create.mobile', layout: 'mobile'
    end
  end
end
