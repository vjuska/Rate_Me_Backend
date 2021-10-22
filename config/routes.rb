Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/users" => "users#index"
  post "/users" => "users#create"

  post "/photos" => "photos#create"
  patch "/photos/:id" => "photos#update"
  delete "/photos/:id" => "photos#destroy"

  post "/sessions" => "sessions#create"
end
