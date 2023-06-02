Rails.application.routes.draw do
  get 'session/show', to: "session#show"
  get 'session/players', to: "session#available_members"
  get 'members', to: "members#index"
  get 'find_new_club', to: "search#index"
  devise_for :users, :path => 'u'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :clubs
  resources :users
  resources :memberships

  root "application#home"
  
  get "home", to: "application#home"
  # get "find_new_club", to: "application#find_new_club"
end
