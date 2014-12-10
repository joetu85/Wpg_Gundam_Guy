Rails.application.routes.draw do
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
  get 'add_to_cart' => 'finder#add_to_cart', as: 'add_to_cart'
end
