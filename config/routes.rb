Rails.application.routes.draw do
  
  # get 'user/role:string'

  # get 'user/name:string'

  root 'home#index'

  resources :albums
  resources :tracks do
    resources :comments 
  end
  devise_for :users

end
