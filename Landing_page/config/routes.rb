Rails.application.routes.draw do
  get 'users/unsuscribe_newsletter'
	root to: 'home#lille'
  get '/hackers', to: 'home#hackers'
  get '/pros', to: 'home#pros'
  get '/lille', to: 'home#lille'
  get '/ok', to: "home#ok"
  get 'users/unsuscribe/:id', to: "users#unsuscribe_newsletter"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
