class WorkoutsController < ApplicationController
  before_action :authenticate_user!, :find, only: [:destroy, :show, :edit, :update]
  def index
    @workouts = current_user.workouts
  end

  def destroy
    @workout.destroy
    redirect_to workouts_path
  end

  def new
    @exercises = Exercise.all
    @workout = Workout.new
  end

  def create
    @workout = current_user.workouts.new(workouts_params)
    if @workout.save then redirect_to edit_workout_path(@workout) end
  end

  def show
    @exercises = Exercise.where(id: @workout.exercise_ids)
  end

  def edit
    if current_user != @workout.user then not_found!("Not found") end
  end

  def update
    puts "A: #{params[:exercise_sets_attributes]}"
    if @workout.update(workouts_params)
      redirect_to workouts_path
    end
  end

  def workouts_params
    params.require(:workout).permit(:title, :duration, :description, exercise_ids: [], exercise_sets_attributes: [:intensity, :weight, :reps])
  end

  def find
    if params[:id]
      @workout = Workout.find(params[:id])
    end
  end

  def not_found!(msg)
    raise ActionController::RoutingError.new(msg)
  end

  def addSet()
    set = ExerciseSet.new(intensity: 1, exercise_id: params[:exercise_id],
      workout_id: params[:workout_id])

    if set.save
      puts "success!"

    else
      puts "something went wrong."  
    end
  end

  def removeSet()
    set = ExerciseSet.find(params[:set_id])
    set.destroy
  end
end
