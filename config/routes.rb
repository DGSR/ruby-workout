Rails.application.routes.draw do
  resources :users
  resources :values
  resources :themes
  resources :images
  get 'main/index'
  get 'main/help'
  get 'main/contacts'
  get 'main/about'
  match 'work', to: 'work#index',via: 'get'
  match 'choose_image',     to: 'work#choose_image',      via: :get
  match 'choose_theme', to: 'work#choose_theme', via: :get
  match 'display_theme', to: 'work#display_theme', via: :post, as: :js
  root 'work#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
