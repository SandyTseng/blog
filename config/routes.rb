Rails.application.routes.draw do
	  resources :articles 

	  root 'articles#index'
	  get 'welcome/home'
	  
	  resources :articles do
		  resources :comments
	  end
end
