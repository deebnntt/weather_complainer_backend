Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :cities, only: [:index]
      get 'historical_conditions/:cityid', to: 'historical_conditions#bycity'
    end
  end

end
