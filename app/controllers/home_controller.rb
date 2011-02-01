class HomeController < ApplicationController
  protect_from_forgery :except => :tab
  
  def index
  end

  def tab
    render :layout => false
  end

end
