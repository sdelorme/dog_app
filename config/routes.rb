Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/dogs" => "dogs#index"
    get "/dogs/:id" => "dogs#show"
    patch "/dogs/:id" => "dogs#update"
    get "/dogs/:id" => "dogs#show"
    delete "/dogs/:id" => "dogs#destroy"
    post "/dogs" => "dogs#create"
  end
end
