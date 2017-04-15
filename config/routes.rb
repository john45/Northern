Rails.application.routes.draw do
  get 'feed' => 'feed#index'

  root to: 'static_pages#home'

  get 'success' => 'static_pages#success'

  resources :articles, only: [:create, :show, :edit, :update, :destroy]
  get 'articles' => 'feed#index'

  devise_for :users

  devise_scope :user do
    get 'sign_up', to: 'devise/registrations#new', as: 'sign_up'
  end
end
