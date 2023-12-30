class WorkoutsController < ApplicationController
  before_action :authenticate_user!
  def main
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workouts_params)
    if @workout.save
      redirect_to workouts_path(@workout)
    end
  end

  def workouts_params
    params.require(:workout).permit(:title)
  end

end

