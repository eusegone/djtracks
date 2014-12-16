Rails.application.routes.draw do
  
  # get 'user/role:string'

  # get 'user/name:string'

  root 'home#index'

  resources :albums
  resources :tracks
  devise_for :users

  # devise_scope :user do
  #   root "devise/sessions#new"
  # end

end
