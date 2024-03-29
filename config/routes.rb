Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  get "/" => "todos#index"
  # Equivalent to:
  # root to: "todos#index"

  # Defines the "todos" resources routes
  # This then constricts it to only include the additional routes we want
  resources :todos, only: [:index, :new, :create]
end
