class WorkoutsController < ApplicationController
  before_action :authenticate_user!, :find, only: [:destroy, :show, :edit, :update]
  def index
    @workouts = current_user.workouts
  end

  def destroy
    # This is needed in order to circumvent errors.
    @workout.exercises.map { |e| e.exercise_sets.destroy_all }
    @workout.destroy

    redirect_to workouts_path
  end

  def new
    @exercises = Exercise.all
    @workout = Workout.new
  end

  def create
    @workout = current_user.workouts.new(workout_params)
    if @workout.save then redirect_to edit_workout_path(@workout) end
  end

  def show
    @exercises = Exercise.where(id: @workout.exercise_ids)
  end

  def edit
    @workout.exercises.each do |ex| 
      ex.exercise_sets.build
    end
    if current_user != @workout.user then not_found!("Not found") end
  end

  def update
    puts "A: #{params[:exercise_sets_attributes]}"
    if @workout.update(workout_params)
      # redirect_to workouts_path
      redirect_to edit_workout_path(params[:id])
    end
  end

  def workout_params
    params.require(:workout).permit(:title, :duration, :description, exercise_ids: [], exercise_sets_attributes: [:weight, :intensity, :reps, :id])
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
    set = ExerciseSet.new(intensity: 1, weight: 0, reps: 0, exercise_id: params[:exercise_id],
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

  def removeExercise()
    @workout = Workout.find(params[:workout_id])
    exercise = Exercise.find(params[:exercise_id])
    
    exercise.exercise_sets.destroy_all
    @workout.exercises.delete(exercise)

    if @workout.save
      puts "success!"
    end
  end
end
