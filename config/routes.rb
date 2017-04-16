Rails.application.routes.draw do
  get 'feed' => 'feed#index', as: 'feed'

  root to: 'static_pages#home'

  resources :articles, only: [:create, :show, :edit, :update, :destroy]

  devise_for :users
  resources :users, only: [:show, :edit, :update]

  devise_scope :user do
    get 'sign_up', to: 'devise/registrations#new', as: 'sign_up'
  end

end
