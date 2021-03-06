Rails.application.routes.draw do

  devise_for :users
  resources :articles, only: [:index, :show, :new, :create] do
    resources :comments, only: [:new, :create] do
      resources :votes, only: [:create, :destroy]
    end
    resources :votes, only: [:create, :destroy]
  end
  root 'articles#index'

end
