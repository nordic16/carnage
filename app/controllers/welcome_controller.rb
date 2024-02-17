class WelcomeController < ApplicationController

  before_action :authenticate_user!, only: [:logbook]

  def index
  end

  def about
  end

  def logbook
    @user = User.find(params[:id])
    @workouts = @user.workouts

  end
end
