class TopController < ApplicationController

  def index
    if authenticated?
      redirect_to dashboard_url 
    else
      #redirect_to canvas_url 
    end
  end

end
