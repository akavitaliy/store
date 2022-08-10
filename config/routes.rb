Rails.application.routes.draw do
  devise_for :users, controllers: {
    registration: 'registration'  
  }
  root to: 'store#index'
end
