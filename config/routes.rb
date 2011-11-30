FishAlbum::Application.routes.draw do
  get  'mobile/index'
  get  'mobile/settings'
  post 'mobile/settings'
  get  "admin/login"
  get  "admin/logout"

  resources :families do
    resources :fish do
      resources :photos
    end
  end
  root to: "mobile#index"
end
