Rails.application.routes.draw do

  root to: 'dogs#index'

  resources :dogs
  resources :daycares

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
