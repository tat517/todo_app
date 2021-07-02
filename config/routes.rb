Rails.application.routes.draw do
  get '/', to: 'home#top'
  
  resources :tasks
  
  resources :users
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
