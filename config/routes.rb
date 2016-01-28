Rails.application.routes.draw do
  resources :articles

  root 'articles#index'
  get 'welcome/home'

end
