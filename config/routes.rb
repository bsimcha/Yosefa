Rails.application.routes.draw do

  #PAINTING
  get "/paintings" => "paintings#index"
  get "/paintings/:id" => "paintings#show"

  #CATEGORY
  get "/categories" => "categories#index"
  get "/categories/:id" => "categories#show"

  #ORDERS
  get "orders" => "orders#index"
  get "orders/:id" => "orders#show"
  post "orders" => "orders#create"
  delete "orders/:id" => "orders#destroy"
end
