Rails.application.routes.draw do
  root 'payment#index'
  resources :payment
end
