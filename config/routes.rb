Rails.application.routes.draw do
  root to: 'static_pages#home'

  get 'success' => 'static_pages#success'

  devise_for :users
end
