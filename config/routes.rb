Rails.application.routes.draw do
  resources :examples
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resque
  require 'resque/server'
  protected_resque = Rack::Auth::Basic.new(Resque::Server.new) do |username, password|
    username == DEVELOPER_EMAIL && password == (DEVELOPER_PASSWORD)
  end
  mount protected_resque, :at => "/resque"
end
