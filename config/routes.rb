Rails.application.routes.draw do
  resources :order_images
  resources :image_tags
  resources :images
  resources :tags
  resources :orders
  resources :users

  get "/login", to: "users#login", as: "login"
  post "/login", to: 'users#handle_login'
  # get "/signup", to: 'users#signup', as: "signup"
  delete "/logout", to: "users#logout"
  delete "/order_images", to: "order_images#destroy", as: "clean"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# post 'order_images/:id/add' => "order_images#add_quantity", as: "image_add"
# post 'order_images/:id/reduce' => "order_images#reduce_quantity", as: "image_reduce"
# post 'order_images' => "order_images#create"
# get 'order_images/:id' => "order_images#show", as: "image"
# delete 'order_images/:id' => "order_images#destroy"
end
