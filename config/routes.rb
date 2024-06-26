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
  patch "/categories/:id" => "categories#update"
  delete "/categories/:id" => "categories#destroy"

  #CATEGORY_PAINTING
  get "/category_paintings" => "category_paintings#index"
  post "/category_paintings" => "category_paintings#create"

  #USERS
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"

  #SESSIONS
  post "/sessions" => "sessions#create"

  #IMAGES
  get "/images" => "images#index"
  get "/images/:id" => "images#show"
  post "/images" => "images#create"
  patch "/images/:id" => "images#update"
  delete "/images/:id" => "images#destroy"
end
