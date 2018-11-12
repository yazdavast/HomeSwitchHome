Rails.application.routes.draw do


  resources :administrators
  resources :residences
  

  get  '/iniciarSesion', to:'administrators#iniciarSesion'


 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
