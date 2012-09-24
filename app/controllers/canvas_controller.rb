class CanvasController < ApplicationController
  def show
    redirect_to Facebook.config[:canvas_url]
  end

  def create
    @auth = Facebook.auth.from_signed_request(params[:signed_request])
    if !@auth.authorized?
      render :authorize
      return
    end
    authenticate Facebook.identify(@auth.user)
    account= Facebook.identify(@auth.user)
    scenario=account.scenario
    if (scenario.nil?)
      #Create the scenario
      scenario=Scenario.new(:facebook => account, :name=>'Your Scenario')
      scenario.save
      scenario.generate_budget
    end
    @incomes=[]
  end
end
