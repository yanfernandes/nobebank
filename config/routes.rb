Rails.application.routes.draw do
  resources :withdraws
  resources :deposits
  resources :bank_accounts
  devise_for :users
  
  root to: "home#index"
  get 'home/index'
end
