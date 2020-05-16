Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'fiction', to: 'pages#fiction'
  get 'documentaires', to: 'pages#documentaires'
  get 'publicites', to: 'pages#publicites'
  get 'apropos', to: 'pages#apropos'
  get 'contact', to: 'pages#contact'
end
