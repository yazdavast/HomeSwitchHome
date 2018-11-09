Rails.application.routes.draw do


  resources :administrators
  resources :residences
  
  
  root 'administrators#default'

 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
