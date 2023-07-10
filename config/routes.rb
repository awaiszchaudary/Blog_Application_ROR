Rails.application.routes.draw do
  get 'comments/index'
  devise_for :users
  
  root 'static_pages#home'
  resources :articles do
    resources :comments
  end
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
