class HomeController < ApplicationController
  def index
  	@exercise = Exercise.new
  	@day = Day.new
  	@user = current_user
  end
end
