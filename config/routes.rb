Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessons/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "index#index"
  get '/signup', to: 'index#signup'
  post '/upload', to: 'driver#upload'
  get '/show', to: 'driver#show'
  get '/edit', to: 'driver#edit'
  
  
  get '/login', to: "sessions#new"
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy' 
  get '/order' , to: 'students#new_order'
  post '/order', to: 'students#create_order'
  get '/orders', to: 'index#orders'
  
  
  
  resources :drivers
  resources :students
  resources :managers
  
end 
