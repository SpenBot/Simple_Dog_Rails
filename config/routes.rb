Rails.application.routes.draw do

  root to: 'dogs#index'

  resources :dogs do
    resources :appointments
  end
  
  resources :daycares


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
