class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action { g "#{self.class.name}##{action_name}" }
  # it's same as before_action :action_name and def action_name method.
  # before_action { console }

end
