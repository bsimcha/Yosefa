Rails.application.routes.draw do

  #PAINTING
  get "/paintings" => "paintings#index"
  get "/paintings/:id" => "paintings#show"
  post "/paintings" => "paintings#create"

  #CATEGORY
  get "/categories" => "categories#index"
  get "/categories/:id" => "categories#show"
  post "/categories" => "categories#create"

  #ORDERS
  get "orders" => "orders#index"
  get "orders/:id" => "orders#show"
  post "orders" => "orders#create"
  delete "orders/:id" => "orders#destroy"
end
