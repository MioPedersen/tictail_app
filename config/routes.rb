Rails.application.routes.draw do
  resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#get_tictail_token' # Runs the controller with the given method controller_name#action_name (method)
end
