Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'habits#index'
  post "habits", to: "habits#create"
  get "habits/:id", to: "habits#show", as: :habit
  post "days", to: "days#create"
  get "days/:id", to: "days#show", as: :day
end
