Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about' , to: 'pages#about'
  resources :posts
  
  get 'search', to:'users#search'
  #resources :users, except: [:new]
  resources :users , only: [:show ,:index]
  resources :comments, only: [:new,:create]
  
end


