Rails.application.routes.draw do

  #PAINTING
  get "/paintings" => "paintings#index"
  get "/paintings/:id" => "paintings#show"

  #CATEGORY
  get "/categories" => "categories#index"
  get "/categories/:id" => "categories#show"
end
