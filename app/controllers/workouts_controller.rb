class WorkoutsController < ApplicationController
  before_action :authenticate_user!, :find
  def index
    @workouts = current_user.workouts
  end

  def destroy
    @workout.destroy
    redirect_to workouts_path
  end


  def new
    @workout = Workout.new
  end

  def create
    @workout = current_user.workouts.new(workouts_params)
    if @workout.save then redirect_to workout_path(@workout) end
  end

  def show
  end

  def edit
  end

  def update
    if @workout.update(workouts_params)
      redirect_to workouts_path
    end
  end

  def workouts_params
    params.require(:workout).permit(:title)
  end

  def find
    if params[:id]
      @workout = Workout.find(params[:id])
    end
  end
end
