Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'nos_fictions', to: 'pages#fiction'
  get 'nos_documentaires', to: 'pages#documentaires'
  get 'nos_publicites', to: 'pages#publicites'
  get 'apropos', to: 'pages#apropos'
  get 'contact', to: 'pages#contact'
  get 'timtools', to: 'pages#timtools'

  resources :site_contacts, only: [:create]
  resources :fictions

end
