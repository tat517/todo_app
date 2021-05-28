Rails.application.routes.draw do
  post 'tasks/create', to: 'tasks#create'
  get 'tasks/new', to: 'tasks#new'
  get 'tasks/index', to: 'tasks#index'
  get '/', to: 'home#top'
end
