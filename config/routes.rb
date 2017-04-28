Rails.application.routes.draw do
	root 'layout/application'
 	get 'annonce/index'

 	get 'annonce/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
