Rails.application.routes.draw do

root 'restaurants#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions

resources :restaurants do
  resources :reservations do
    resources :users
end
end


# post '/sessions/new' => 'sessions#new', as 'monkey'


end
