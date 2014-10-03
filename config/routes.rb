Rails.application.routes.draw do
  root 'welcome#index'

  resources :registrations
  resources :rants

  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  delete "signout" => "sessions#destroy", as: :signout
end
