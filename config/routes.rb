Rails.application.routes.draw do
  get 'starts/index'
  resources :todos, :nottodos
  root 'start#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
