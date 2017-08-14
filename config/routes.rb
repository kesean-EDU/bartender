Rails.application.routes.draw do
  # resources :drinks, only: [:index, :show]
  get '/drinks', to: 'drinks#index', as: 'drinks'
  get '/drinks/:id', to: 'drinks#show', as: 'drink'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
