Rails.application.routes.draw do
  get 'points/index'
  get 'points/import'

  resources :points do
  	collection { post :import}
  end

  root to: "points#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
