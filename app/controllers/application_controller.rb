class ApplicationController < ActionController::Base
  include Pundit::Authorization
  # after_action :verify_authorized
end
