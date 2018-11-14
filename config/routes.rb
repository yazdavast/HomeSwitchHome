Rails.application.routes.draw do

  get 'bids/index'

  get 'bids/show'

  get 'bids/new'

  get 'bids/create'

  get 'auctions/show'

  get 'auctions/index'

  get 'auctions/new'

  get 'auctions/create'

  get 'auctions/destroy'

  resources :administrators
  resources :residences
  resources :reservations

  root 'administrators#home'

  get 'clients/index'

  get 'clients/show'

  get 'clients/new'

  get 'clients/edit'

  get 'clients/create'

  get 'clients/destroy'

  get 'administrators/sesionIniciada/:id', to: 'administrators#sesionIniciada'

  get 'clients/sesionIniciada/:id', to: 'clients#sesionIniciada'
  
  get 'check',to: 'reservations#check'

  get  'iniciarSesion',to:'administrators#iniciarSesion'

  get 'validarLogIn',to:'administrators#validarLogIn'
  get 'reserve', to: 'residences#reserve'

  get 'default', to: 'administrators#default'
  get 'verCalendario', to:'residences#verCalendario'
  get 'clients/residences', to: 'clients#residences'


   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
