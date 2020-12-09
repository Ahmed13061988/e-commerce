Rails.application.routes.draw do
  # resources :user_carts
  # resources :seller_items
  # resources :sellers
  # resources :cart_items
  # resources :items
  # resources :carts
  # resources :order_items
  # resources :orders
  # resources :categories
  # resources :products
  # resources :users
  post '/users', to: 'users#create'
  delete '/logout', to: 'sessions#logout'
  post '/login', to: 'sessions#create'
  get '/items', to: 'items#index'
  
  post '/carts', to: 'carts#add_item_to_cart'
  post '/orders', to: 'orders#create'
  post '/signup', to: 'users#create'

  delete '/carts/:cart_id', to: 'carts#remove_item_from_cart'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
