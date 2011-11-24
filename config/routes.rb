FishAlbum::Application.routes.draw do
  resources :fish

  resources :photos

  get "mobile/index"
  root to: "photos#index"
end
