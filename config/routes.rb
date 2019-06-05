Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/dashboard', to: 'users#dashboard'
  resources :problems, only: [:index, :show, :new, :create] do
    resources :solutions, only: [:new, :create]
  end

  resources :solutions, only: [:show]

  resources :problem_votes, only: [:create]

  resources :solution_votes, only: [:create]

end
