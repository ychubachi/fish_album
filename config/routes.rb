FishAlbum::Application.routes.draw do
  resource :settings

  get  'mobile/index'
  get  'mobile/settings'
  post 'mobile/settings'
  get  "admin/index"
  get  "admin/login"
  get  "admin/logout"

  resources :families do
    resources :fish do
      resources :photos
    end
  end
  root to: "mobile#index"
end
