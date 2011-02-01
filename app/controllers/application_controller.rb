class ApplicationController < ActionController::Base
  protect_from_forgery
  include Facebooker2::Rails::Controller
  helper_method :current_facebook_page
  
  def current_facebook_page
    if facebook_params[:profile_id]
      @_current_facebook_page = Mogli::Page.new(:id => facebook_params[:profile_id].to_i)
    else
      nil
    end
  end
end
