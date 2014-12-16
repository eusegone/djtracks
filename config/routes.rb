Rails.application.routes.draw do
  
  root 'home#index'

  resources :albums
  resources :tracks
  devise_for :users

  # devise_scope :user do
  #   root "devise/sessions#new"
  # end

end
