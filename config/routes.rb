Rails.application.routes.draw do
  devise_for :users
  root to: 'problems#home'
  # namespace 'my' do
  #   GET 'my/problems', to: 'problems#index'
  # end
  resources :problems, only: [:index, :show, :update] do
    resources :solutions, only: [:index, :new, :create]
  end
  resources :solutions, only: [:show]
end
