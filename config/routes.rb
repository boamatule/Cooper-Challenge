Rails.application.routes.draw do
  #devise_for :users
  namespace :api do
    namespace :v0 do
      resources :pings, only: [:index], constraints: { format: 'json' }
    end
    namespace :v1, defaults: { format: :json } do
      resources :performance_data, only: [:create, :index]
      mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]
    end
  end
end