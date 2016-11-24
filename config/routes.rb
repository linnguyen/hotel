Rails.application.routes.draw do
   
  root 'pages#home'
  
  get 'sessions/new'

  get 'users/new'

  get 'users/index'

  get 'users/show'

  get '/sign_up', to: 'users#new'

  get '/login',to: 'sessions#new'

  post '/login',to: 'sessions#create'

  get '/logout',to: 'sessions#destroy'
  
  get '/about',to: 'pages#about'


  
  resources :checkins

  resources :users

  namespace :admin do
    resources :rooms
    resources :guests
    resources :bookrooms
    resources :roomtypes
    get '/checkout',to: 'bookrooms#checkout'
    get '/bill',to: 'bookrooms#bill'
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
