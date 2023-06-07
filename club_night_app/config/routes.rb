Rails.application.routes.draw do
  get 'session/show', to: "session#show"
  get 'session/create_match', to: "session#create_match"
  post 'session/random'
  post 'session/end_game'
  post 'session/need_rest'
  post 'session/end_rest'
  post 'session/fixed_ability'
  get 'session/end_session'





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
