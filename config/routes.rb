Rails.application.routes.draw do
  devise_for :users

  get 'pages/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pairs#index'
end
