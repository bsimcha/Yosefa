Rails.application.routes.draw do

  #PAINTING
  get "/paintings" => "paintings#index"
  get "/paintings/:id" => "paintings#show"
  post "/paintings" => "paintings#create"
  patch "/paintings/:id" => "paintings#update"
  delete "/paintings/:id" => "paintings#destroy"

  #CATEGORY
  get "/categories" => "categories#index"
  get "/categories/:id" => "categories#show"
  post "/categories" => "categories#create"
  delete "/categories/:id" => "categories#destroy"

  #CATEGORY_PAINTING
  get "/category_paintings" => "category_paintings#index"
  post "/category_paintings" => "category_paintings#create"

  #USERS
  post "/users" => "users#create"

  #SESSIONS
  post "/sessions" => "sessions#create"
end
