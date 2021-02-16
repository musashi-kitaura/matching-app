Rails.application.routes.draw do
  # get 'categorys/index'
  devise_for :users
  root 'tops#index'
  resources :users ,only: [:index, :show,:edit,:update] do
    member do
      get 'favorite'
    end
  end  
  resources :community_users, only: [:create] 
  resources :communities, only: [:index, :show, :create] 
  resources :relationships, only: [:index,:create, :destroy,]
  resources :categories, only: [:show] 
  resources :rooms, only: [:index, :create, :show]  
  resources :messages, only: [:index,:create] 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end