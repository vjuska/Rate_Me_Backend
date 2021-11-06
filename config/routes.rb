Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # USERS
  get "/users" => "users#index"
  post "/users" => "users#create"

  # RATERS
  post "/raters" => "raters#create"

  # PHOTOS
  get "/photos" => "photos#index"
  post "/photos" => "photos#create"
  patch "/photos/:id" => "photos#update"
  delete "/photos/:id" => "photos#destroy"
  get "/photos/analyze/:id" => "photos#analyze"

  # SESSIONS
  post "/sessions" => "sessions#create"
  post "/rater_sessions" => "rater_sessions#create"

  # RATINGS
  patch "/ratings/:id" => "ratings#update"
  post "/ratings" => "ratings#create"
end
