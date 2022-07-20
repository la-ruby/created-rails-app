Rails.application.routes.draw do
  resources :examples
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  require 'sidekiq/web'
  require 'sidekiq/cron/web'

  Sidekiq::Web.use Rack::Auth::Basic do |username, password|
    username == ENV['PREFIX_DEVELOPER_EMAIL'] && password == ENV['PREFIX_DEVELOPER_PASSWORD']
  end
  mount Sidekiq::Web => '/sidekiq'
end
