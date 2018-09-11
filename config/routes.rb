Rails.application.routes.draw do
  get 'agent/index'

  get 'team_lead/index'

  get 'supervisor/index'
  post 'supervisor/assign'

  get 'home/index'

  get 'login/new'
  get 'login/logout'
  post 'login/create'

  get 'customer/index'
  post 'customer/import'

  get 'users/index'
  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root to: 'login#new', as: 'home'
  resources :users
end
