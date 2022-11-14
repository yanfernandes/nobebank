Rails.application.routes.draw do
  resources :bank_accounts
  devise_for :users
  root "home#index"
end
