Rails.application.routes.draw do
  resources :tasks
  
  get '/', to: 'home#top'
end
