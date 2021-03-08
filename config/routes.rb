Rails.application.routes.draw do
  resources :order_images
  resources :image_tags
  resources :images
  resources :tags
  resources :orders
  resources :users

  # get "/login", to: "users#login", as: "login"
  # post "/login", to: 'users#handle_login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
