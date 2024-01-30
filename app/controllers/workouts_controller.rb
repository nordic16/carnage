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
    if current_user != @workout.user then not_found!("Not found") end
  end

  def update
    if @workout.update(workouts_params)
      redirect_to workouts_path
    end
  end

  def workouts_params
    params.require(:workout).permit(:title, :duration)
  end

  def find
    if params[:id]
      @workout = Workout.find(params[:id])
    end
  end

  def not_found!(msg)
    raise ActionController::RoutingError.new(msg)
  end

end
