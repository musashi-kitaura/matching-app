Rails.application.routes.draw do
  # get 'categorys/index'
  devise_for :users
  root 'tops#index'
  resources :categorys, only: [:index] do
    collection do 
      get 'favorite'
    end
  end  
  resources :messages, only: [:index] do
    collection do 
      get 'message'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end