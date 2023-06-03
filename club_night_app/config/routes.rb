Rails.application.routes.draw do
  get 'session/show', to: "session#show"
  # scope '/random' do
  #   get 'session/show', to: "session#random"
  # end
  post 'session/random_1'
  post 'session/end_game_1'
  post 'session/random_2'
  post 'session/end_game_2'

  put 'session/players', to: "session#update_attendance"
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
