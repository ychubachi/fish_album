FishAlbum::Application.routes.draw do
  resources :photos

  get "mobile/index"
  root to: "mobile#index"
end
