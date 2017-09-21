Rails.application.routes.draw do

  devise_for :users

  root to: 'homes#index'


  get '/homes/' => "homes#index", home:"index"
  get '/homes/nonuser_dogs' =>"homes#nonuser_dogs", home:"nonuser_dogs"

  resources :dogs
  resources :appointments
  resources :daycares
  # resources :homes





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
