Rails.application.routes.draw do
  get "/dashboard" => 'dashboard#index', as: :dashboard
  get 'dashboard/properties'
  get 'dashboard/reports'
  resources :properties
  devise_for :accounts
  get 'public/main'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'public#main'
end
