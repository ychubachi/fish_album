FishAlbum::Application.routes.draw do
  get  "admin/index"
  get  "admin/login"
  get  "admin/logout"

  resources :families do
    resources :fish
  end

  resources :fish do
    resources :photos
  end

  resources :photos
  resource :search

  match "/admin/" => "admin#login"
  root to: "families#index"
end
