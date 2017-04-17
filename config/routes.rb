# frozen_string_literal: true

Rails.application.routes.draw do
  get 'comments/create'

  get 'comments/update'

  get 'comments/destroy'

  get 'comments/edit'

  get 'feed' => 'feed#index', as: 'feed'

  root to: 'static_pages#home'

  resources :articles, only: %i[create show edit update destroy]
  resources :comments
  devise_for :users
  resources :users, only: %i[show edit update]

  devise_scope :user do
    get 'sign_up', to: 'devise/registrations#new', as: 'sign_up'
  end
end
