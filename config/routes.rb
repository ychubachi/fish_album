FishAlbum::Application.routes.draw do
  get "admin/login"

  get "admin/logout"

  resources :families do
    resources :fish do
      resources :photos
    end
  end
  root to: "families#index"
end
