class WelcomeController < ApplicationController
  def index
  end

  def about
  end

  def dashboard
    @workouts = current_user.workouts
  end
end
