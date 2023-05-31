Rails.application.routes.draw do
  devise_for :users, :path => 'u'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :clubs
  resources :users
  resources :memberships

  root "application#home"
  
  get "home", to: "application#home"
end
