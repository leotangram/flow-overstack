Rails.application.routes.draw do
	
	resources :questions
	get '/index', to: 'welcome#index', as: 'welcome'
	root 'welcome#index'

  devise_for :users
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
