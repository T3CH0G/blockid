require 'professor'
require 'student'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  protected
    def after_sign_in_path_for(resource)
    	p=Professor.find_by(email: current_user.email)
      if p!=nil
        prof_path(p.id)
      else
      	stud_path(1)
      end
  end
end

