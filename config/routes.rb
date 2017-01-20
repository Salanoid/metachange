Rails.application.routes.draw do
  devise_for :users
  resources :unwanteds
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/" => "unwanteds#index", :as => "root"
end
