Rails.application.routes.draw do


  resources :administrators
  resources :residences
  
  
  root 'administrators#default'
  

  get 'administrators/default'

  get 'residence/show'

  get 'residence/new'

  get 'residence/edit'

  get 'administrator/index'

  get 'administrator/show'

  get 'administrator/new'

  get 'residence/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
