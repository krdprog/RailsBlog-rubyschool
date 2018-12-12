Rails.application.routes.draw do
  get 'home/index'

  resource :contacts, only: [:new, :create], path_names: { :new => '' }
  resources :articles
end