Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :performances, only: [:index, :show]
      resources :strokes, only: [:create]
    end
  end
  # routes for user authentication
  post '/login', to: 'auth#login'
  get '/current_user', to: 'auth#currentUser'
  post '/signup', to: 'auth#signup'
end
