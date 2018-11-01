Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users,
  path_names: {sign_in: "login", sign_out: "logout", edit: "profile", sign_up: "registration"},
  controllers: {omniauth_controller: 'omniauth_callbacks', registration: "registration"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   
  # get '/user/:id', to: 'users#show'
  resources :users, only: [:show]
end
