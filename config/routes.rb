Rails.application.routes.draw do
  
  root to: "static#homeroom"

  get "/signup", to: "users#new", as: "signup"
  post "/signup", to: "users#create"
  
  get "/login", to: "session#new", as: "login"
  post "/login", to: "session#create"

  delete "/logout", to: "session#destroy", as: "logout"

  resources :users do
    resources :subjects  
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
