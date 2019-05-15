Rails.application.routes.draw do
  #devise_for :users
  mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]
  namespace :api do
    namespace :v0 do
      namespace :v1 do
        resources :pings, only: [:index], constraints: { format: 'json' }
      end
    end
  end
end