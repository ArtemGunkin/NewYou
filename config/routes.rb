Rails.application.routes.draw do
  
  get 'users/profile'

 resources :orders  
 	resources :comments, :only => [:create, :destroy]
 get 'tags/:tag', to: 'orders#index', as: :tag
  devise_for :users
  get 'welcome/index' => 'welcome#index'
  get 'users/profile', as: 'user_root'



  root 'welcome#index'
end
