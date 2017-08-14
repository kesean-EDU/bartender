Rails.application.routes.draw do
  # resources :drinks, only: [:index, :show, :new, :create]
  get '/drinks', to: 'drinks#index', as: 'drinks'
  post '/drinks', to: 'drinks#create'
  get '/drinks/new', to: 'drinks#new', as: 'new_drink'
  get '/drinks/:id', to: 'drinks#show', as: 'drink'
  get '/drinks/:id/edit', to: 'drinks#edit', as: 'edit_drink'
  patch '/drinks/:id', to: 'drinks#update'
  delete '/drinks/:id', to: 'drinks#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
