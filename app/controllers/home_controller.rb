class HomeController < ApplicationController

skip_before_action :verify_authenticity_token
# due to the error: unprocessable entity (when executing ajax)

  def index
  end
  
  def check
    dist = params[:dist]
    result = Hash.new
    result['dist'] = dist
    
    render :json => result
    
    # if dist >0.001
    #   render :json => result
    # else
    #   render
    # end
  end
end
