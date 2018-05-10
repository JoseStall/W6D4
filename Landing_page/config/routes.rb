Rails.application.routes.draw do
  get 'home/hackers', to: 'home#hackers'
  get 'home/pros', to: 'home#pros'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
