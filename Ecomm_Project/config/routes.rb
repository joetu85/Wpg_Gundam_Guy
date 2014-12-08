Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root to: 'finder#index'
  get 'product/:id' => 'finder#show', constraints: {id: /\d+/}, as: 'product'
end
