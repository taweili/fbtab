class HomeController < ApplicationController
  protect_from_forgery :only => :index
  
  def index
  end

  def tab
    debug_session
  end

  def fbml
    debug_session
  end

  def debug_session
    logger.debug("---tab ----- #{current_facebook_user.inspect}")
    logger.debug("---page----- #{current_facebook_page}")
    logger.debug("---params--- #{facebook_params.inspect}")
  end
  
end
