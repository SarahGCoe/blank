Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/dashboard', to: 'users#dashboard'
  resources :problems, only: [:index, :show] do
    resources :problem_votes, only: [:create]
    resources :solutions, only: [:new, :create]
  end

  resources :solutions, only: [:show]


  resources :solution_votes, only: [:create]

end
