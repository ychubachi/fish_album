FishAlbum::Application.routes.draw do
  get "mobile/index"
  root to: "mobile#index"
end
