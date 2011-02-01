class ApplicationController < ActionController::Base
  protect_from_forgery
  include Facebooker2::Rails::Controller
  
end
