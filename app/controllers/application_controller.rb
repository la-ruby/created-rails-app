class ApplicationController < ActionController::Base

    include CableReady::Broadcaster
  include Pundit::Authorization
end
