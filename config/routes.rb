FishAlbum::Application.routes.draw do
  resources :photos

  get "mobile/index"
  root to: "photos#index"
end
