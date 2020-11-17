Rails.application.routes.draw do
  get 'category/index'
  devise_for :users
  root 'top#index'
  resources :categorys, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end