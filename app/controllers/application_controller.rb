class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :g_action
  def g_action
    g "#{self.class.name}##{action_name}"
  end

  before_action ->{ console }

end
