Rails.application.routes.draw do
  resources :orders

  resources :provinces

  resources :customers

  resources :pages

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root to: 'finder#index'
  get 'product/:id' => 'finder#show', constraints: {id: /\d+/}, as: 'product'
  get 'page/:id' => 'pages#show', as: 'page2'
  get 'category/:id' => 'categories#show', as: 'category'
  get 'search_results' => 'finder#search_results', as: 'search_results'
  post 'favourite_product/:id' => 'finder#save_favourite_product', as: 'save_fav_prod'
  get 'category_search_results' => 'finder#category_search_results', as: 'category_search_results'
  get 'purchase/:id' => 'finder#save_product', as: 'purchase'
  get 'new_order' => 'customers#new', as: 'customer_info_screen'
  get 'add_new_customer' => 'customers#add_new_customer'
end
