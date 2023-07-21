Rails.application.routes.draw do
  get 'admins/index'
  root 'users#index'

  resources :users
  resources :admins
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  

end
