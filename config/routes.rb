Rails.application.routes.draw do
  resource :account_numbers, only: [:new, :create]
  root 'account_numbers#new'
end
