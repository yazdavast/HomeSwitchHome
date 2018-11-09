Rails.application.routes.draw do


  resources :administrators
  resources :residences
  
  
  root 'administrators#default'

  get 'residences/show'

  get 'residences/new'

  get 'residences/edit'

  get 'administrators/index'

  get 'administrators/show'

  get 'administrators/new'

  get 'residences/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
