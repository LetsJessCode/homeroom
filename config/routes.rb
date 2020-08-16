Rails.application.routes.draw do
  root to: "static#homeroom"

  get "/signup", to: "users#new", as: "signup"
  post "/signup", to: "users#create"
  
resources :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
