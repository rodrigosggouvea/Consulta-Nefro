class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_medico!

  def index
  end

end
