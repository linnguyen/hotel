Rails.application.routes.draw do

  get 'sessions/new'

  resources :users
  get 'users/new'

  get 'users/index'

  get 'users/show'

  get '/sign_up', to: 'users#new'

  get '/login',to: 'sessions#new'

  post '/login',to: 'sessions#create'

  delete '/logout',to: 'sessions#destroy'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
