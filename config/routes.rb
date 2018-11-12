Rails.application.routes.draw do


  resources :administrators
  resources :residences
  
  
  root 'administrators#home'

  get  'iniciarSesion',to:'administrators#iniciarSesion'

  get 'validarLogIn',to:'administrators#validarLogIn'

  get 'default', to: 'administrators#default'

 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
