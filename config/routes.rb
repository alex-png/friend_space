Rails.application.routes.draw do

  #welcome page
  get "/", to: "home#show"
  #######################
  #create new user
  get "/signup", to: "users#new", as: "new_user"
  post "/signup", to: "users#create"

  #delete user 
  delete 'users/:id', to: 'users#destroy'

  #edit user
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to:"users#update"

  #create user preference
  get "/users/:id/interests", to: "users#interests", as: "interests"
  post "/users/:id/interests", to:"up#add"
  #delete user preference
  delete "/users/2/interests", to: "up#destroy"
  #profile page
  get "/users/:id", to: "users#show", as: "user"

  #landing page
  get "/users/:id/landing", to: "users#landing", as: "user_landing"

  #login user
  get "login", to: "sessions#new", as: "login"
  post "login", to: "sessions#create"
  
  #logout
  post "logout", to: "sessions#logout", as: "logout"

  ##########################
  get "/interests", to: "preferences#index"
  post "/interests/:id", to: "preferences#add_post"
  get "/interests/:id", to: "preferences#show", as: "interest"
end
