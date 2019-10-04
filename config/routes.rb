Rails.application.routes.draw do

  #welcome page
  get "/", to: "home#show"
  #######################
  #create new user
  get "/signup", to: "users#new", as: "new_user"
  post "/signup", to: "users#create"
  
  #profile page
  get "/users/:id", to: "users#show", as: "user"

  #friends page
  get "/user/:id/friends", to:"users#friends", as: "friends"
  
  #delete user 
  delete 'users/:id', to: 'users#destroy'

  #edit user
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to:"users#update"
  #post profile comment
  post "/users/:id", to: "users#add_post"

  #create user preference
  get "/users/:id/interests", to: "users#interests", as: "interests"
  post "/users/:id/interests", to:"up#add"
  #delete user preference
  delete "/users/2/interests", to: "up#destroy"

  #landing page
  get "/users/:id/landing", to: "users#landing", as: "user_landing"

  #login user
  get "login", to: "sessions#new", as: "login"
  post "login", to: "sessions#create"
  
  #logout
  post "logout", to: "sessions#logout", as: "logout"

  ##########################
  get "/interests", to: "preferences#index"
  get "/interests/:id/users", to: "preferences#users", as:"users_by_interest"
  post "/interests/:id", to: "preferences#add_post"
  get "/interests/:id", to: "preferences#show", as: "interest"
  ##########################
  post "/follow", to: "users#add_friend"

end
