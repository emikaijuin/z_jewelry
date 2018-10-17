Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "products#index"
  devise_for :users
  resources :products
end
