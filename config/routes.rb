Rails.application.routes.draw do
	get 'welcome/index'
	
	resources :articles
	
	root 'welcome#index'
	
	get 'health', action: :health, controller: 'health'
	get 'healthz', action: :healthz, controller: 'health'
end
