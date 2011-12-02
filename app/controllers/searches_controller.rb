class SearchesController < ApplicationController
  include NKF

  # GET /search
  def show
    @fish = []
    if admin?
      render
    else
      render template: 'searches/show.mobile', layout: 'mobile'
    end
  end

  # POST /search
  def create
    puts params.to_yaml
    @keyword = params[:keyword]
    @keyword = nkf('-w --katakana', @keyword) if @keyword
    @fish = Fish.joins(:family).where('fish.name_jp like ?', "%#{@keyword}%").order('families.name_jp, name_jp')
    
    if admin?
      render
    else
      render template: 'searches/create.mobile', layout: 'mobile'
    end
  end
end
