Rails.application.routes.draw do
  root to: "artists#index"

  resources :artists
  resources :songs
  resources :photos
end
