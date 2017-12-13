Rails.application.routes.draw do
	
	resources :questions
	get '/index', to: 'welcome#index', as: 'welcome'

  devise_for :users
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
  	root to: "devise/sessions#new"
	end

end
