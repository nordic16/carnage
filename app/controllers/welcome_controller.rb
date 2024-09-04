class WelcomeController < ApplicationController

  before_action :authenticate_user!, only: [:logbook]

  def index
  end

  def about
  end

  def logbook
    @user = params[:id] ? User.find(params[:id]) : current_user
    @workouts = @user.workouts

  end
end
