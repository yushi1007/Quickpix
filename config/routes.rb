Rails.application.routes.draw do
  resources :order_images
  resources :image_tags
  resources :images
  resources :tags
  resources :orders
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
