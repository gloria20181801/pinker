Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessons/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "index#index"
  get '/signup', to: 'index#signup'
  post '/upload', to: 'driver#upload'
  get '/show', to: 'driver#show'
  get '/edit', to: 'driver#edit'
  
  get '/to_take_order', to: 'driver#to_take_order'
  get '/taken_order', to: 'driver#taken_order'
  get '/finished_order', to: 'driver#finished_order'
  
  
  get '/login', to: "sessions#new"
  post '/login', to: 'sessions#create'
  get '/logout', to: 'index#index'
 
  get '/order' , to: 'students#new_order'
  post '/order', to: 'students#create_order'
  get '/orders', to: 'index#orders'
  
  
  
  resources :drivers
  resources :students
  resources :managers
  
end 
