class WelcomeController < ApplicationController
  def index
  end

  def about
  end

  def logbook
    @user = User.find(params[:id]).first
    @workouts = @user.workouts

  end
end
