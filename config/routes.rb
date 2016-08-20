Rails.application.routes.draw do

  root 'pages#index'

  get 'pages/home'

  devise_scope :user do
    get "/sign_in" => "devise/sessions#new"
    get "/sign_up" => "devise/registrations#new", as: "new_user_registration"
  end

  devise_for :users, :controllers => { registrations: 'registrations' }
end
