Rails.application.routes.draw do
  get 'agent/index'

  get 'team_lead/index'

  get 'supervisor/index'
  post 'supervisor/assign'
  post 'supervisor/import'

  get 'home/index'

  get 'login/new'
  get 'login/logout'
  post 'login/create'

  get 'customer/index'
  post 'customer/import'

  get 'users/index'
  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index', as: 'home'
  resources :users

  get 'call_log' => 'call_logs#index'

  get 'agent/call' => 'users#makecall'
  get 'agent/call_log/new' => 'call_logs#new'
  post '/call_logs' => 'call_logs#create'
end
