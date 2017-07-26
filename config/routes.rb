Rails.application.routes.draw do
  root 'users#index'
  resources :users do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #post "/anonroute", :to=>"application#set_anonymous_mode"
  get 'set_anonymous_mode', :on => :collection
end
end
