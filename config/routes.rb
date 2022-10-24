Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'home#index'
  resources :home
  resources :about
  resources :shop
  resources :contact
  resources :products do
    resources :comments
    resources :product_images
    resources :product_price_logs
    resources :reviews
    resources :inventories
  end
end
