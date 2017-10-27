Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :cities, only: [:index]
      resources :historical_conditions, only: [:index]
      get 'historical_conditions/:cityid', to: 'historical_conditions#bycity'
      post 'historical_conditions/update', to: 'historical_conditions#receivepost'
    end
  end

end
