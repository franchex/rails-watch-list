Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'lists#index'
  get 'lists/:id', to: 'lists#show'
  get 'lists/new', to: 'lists#new'
  get 'movies', to: 'movies#index'

  #get 'lists' to: 'lists#index

  # Defines the root path route ("/")
  # root "articles#index"
end
