Rails.application.routes.draw do
  resources :instruments
  devise_for :users, controllers: {
    registration: 'registration'  
  }
  root to: 'instruments#index'
end
