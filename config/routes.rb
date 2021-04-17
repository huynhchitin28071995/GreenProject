Rails.application.routes.draw do
  get 'landing/index'
  get 'products/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  root to: 'landing#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
