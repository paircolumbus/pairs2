Rails.application.routes.draw do

  get 'pages/home'
  get '/sign_up', to: 'pages#sign_up'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pairs#index'

  resources :users
end
