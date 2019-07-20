Rails.application.routes.draw do
  get 'interviews/index'

  get 'social/index'
  
  resources :interviews

  get 'landing/index'
  root'landing#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
