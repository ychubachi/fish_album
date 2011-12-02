FishAlbum::Application.routes.draw do
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

  resources :fish do
    resources :photos
  end

  resources :photos
  resource :search

  resource :setting

  root to: "families#index"
end
