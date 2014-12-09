Rails.application.routes.draw do
  resources :pages

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root to: 'finder#index'
  get 'product/:id' => 'finder#show', constraints: {id: /\d+/}, as: 'product'
  get 'page/:id' => 'pages#show', as: 'page2'
  get 'category/:id' => 'categories#show', as: 'category'
  get 'search_results' => 'finder#search_results', as: 'search_results'
end
