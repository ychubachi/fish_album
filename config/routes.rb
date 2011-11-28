FishAlbum::Application.routes.draw do
  resources :families do
    resources :fish do
      resources :photos
    end
  end
  root to: "families#index"
end
