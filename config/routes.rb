Rails.application.routes.draw do
  root 'payments#index'
  
  resources :payments do
    get 'thank_you', to: 'payments#thank_you'
  end
  
end
