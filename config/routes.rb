Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'habits#index'
  resources :habits, only: [:show, :create]
  resources :days, only: [:index, :show, :create]
end