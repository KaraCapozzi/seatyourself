Rails.application.routes.draw do

root 'restaurants#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :users
resources :reservations
resources :restaurants
resources :sessions

# post '/sessions/new' => 'sessions#new', as 'monkey'


end
