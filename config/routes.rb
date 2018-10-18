Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "products#index"
  devise_for :users 
  
  resources :users do
    resources :orders
  end

  resources :products do
    resources :orders, only: [:index] # Admin can view all orders associated to a product
  end
end
