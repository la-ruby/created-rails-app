Rails.application.routes.draw do
  resources :examples
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  require 'sidekiq/web'
  # REVISIT require 'sidekiq/cron/web'

  Sidekiq::Web.use Rack::Auth::Basic do |username, password|
    username == ENV['PREFIX_DEVELOPER_EMAIL'] && password == ENV['PREFIX_DEVELOPER_PASSWORD']
  end
  mount Sidekiq::Web => '/sidekiq'
end
