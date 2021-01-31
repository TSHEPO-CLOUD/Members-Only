Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :posts, only: %i[new create index]
  resources :users, only: [:index] do
  get 'rules', to: 'pages#rules'

  root 'pages#home'
  end
end