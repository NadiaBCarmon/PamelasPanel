Rails.application.routes.draw do
  	devise_for :admins
  # devise_for :installs
  
	resources :courses
	resources :cohorts
	resources :students
	resources :instructors
	resources :addedits
	resources :contactus

	root to: "logins#index"
	get "/login", to: "logins#index"
	get "/courses/view", to: "courses#show"
	get "/cohorts/view", to: "cohorts#show"
	get "/students/view", to: "students#show"
	get "/instructors/view", to: "instructors#show"
	post "contactus/messages", to: "contactus#show"

	post '/login', to: "sessions#create"
	delete '/logout', to: 'sessions#destroy'
	get "/dashboard", to: "dashboards#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
