Rails.application.routes.draw do
  # resources :drinks, only: [:index, :show]
  get '/drinks', to: 'drinks#index', as: 'drinks'
  get '/drinks/new', to: 'drinks#new', as: 'new_drink'
  get '/drinks/:id', to: 'drinks#show', as: 'drink'
  post '/drinks', to: 'drinks#create'
  get '/categories', to: 'drink_categories#index', as: 'drink_categories'
  get '/bartenders', to: 'bartenders#index', as: 'bartenders'
  get '/bartenders/new', to: 'bartenders#new', as: 'new_bartender'
  post '/bartenders', to: 'bartenders#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
