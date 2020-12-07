Rails.application.routes.draw do
  resources :user_carts
  resources :seller_items
  resources :sellers
  resources :cart_items
  resources :items
  resources :carts
  resources :order_items
  resources :orders
  resources :categories
  resources :products
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
