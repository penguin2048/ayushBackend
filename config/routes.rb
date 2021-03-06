Rails.application.routes.draw do
  
	post '/signup', to: 'institutions#create' 
	resources :institutions do
  		get '/history' , to: 'institutions#history'
    	resources :locations
    	resources :clinicals
    	get '/login', to: 'institutions#login'
	end
	resources :appointments do
		get '/receipt', to: 'appointments#receipt'
	end

	resources :patients do
  		get '/appointments', to: 'patients#appointment'
  		get '/login', to: 'patients#login'
	end

 	get 'search/institutions', to: 'search#institutions'
 	get 'search/doctors', to: 'search#doctors'
 	get 'search/services', to: 'search#services'
 	resources :timeslots
 	resources :rates

 
 	resources :videos
 	resources :filter_locations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
