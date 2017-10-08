require 'Professor'
require 'Student'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  protected
    def after_sign_in_path_for(resource)
    	p=Professor.find_by(email: current_user.email)
      if p!=nil
      	prof_path(1)
      else
      	stud_path(1)
      end
  end
end
