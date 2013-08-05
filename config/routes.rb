Eventsroundme::Application.routes.draw do
 
  get "events/city/:name" => "events#events_by_city"

  get "popup/events_around_me"
  get "popup/homepage"
  get "popup/signup"

  get "static/home"
  get "static/contact"
  get "static/help"
  get "static/faq"
  get "static/test"  

  resources :categories
  resources :events
  

  devise_for :users
  root :to => "events#index"
end
