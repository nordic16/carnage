class WorkoutsController < ApplicationController
  before_action :authenticate_user!
  def main
    @workouts = current_user.workouts
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = current_user.workouts.new(workouts_params)
    if @workout.save
      redirect_to workout_path(@workout)
    end
  end

  def show
    @workout = Workout.find(:id)
  end

  def workouts_params
    params.require(:workout).permit(:title)
  end

end

