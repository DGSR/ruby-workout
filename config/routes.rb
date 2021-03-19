Rails.application.routes.draw do
  resources :users
  resources :values
  resources :themes
  resources :images
  get 'main/index'
  get 'main/help'
  get 'main/contacts'
  get 'main/about'
  get 'work/index'
  get 'work/choose_theme'
  get 'work/display_theme'
  root 'work#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
