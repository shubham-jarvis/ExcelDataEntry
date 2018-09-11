Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#index', as: 'home'
  resources :users

  get 'call' => 'users#makecall'
  get 'call_log/new' => 'call_logs#new'
  post '/call_logs' => 'call_logs#create'
end
