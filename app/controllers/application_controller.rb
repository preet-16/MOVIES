class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
   def after_sign_in_path_for(resource)
   bio_path(resource)
  end
def store_current_location
store_current_location_for(:user,request.url) 
end
end
