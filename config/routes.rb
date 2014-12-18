Rails.application.routes.draw do

  # get 'user/role:string'

  # get 'user/name:string'
  authenticated :user do
      root to: "users#show", as: :authenticated_root
    end

    unauthenticated do
      root to: "home#index"
    end

  resources :albums
  resources :tracks do
    resources :comments do
      collection do
        put :approve
      end
    end  
  end
  devise_for :users
  resources :users

end
