Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index' => 'welcome#index'
  get 'persons/profile', as: 'user_root'

  root 'welcome#index'
end
