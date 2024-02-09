class ExercisesController < ApplicationController
  before_action :authenticate_user!

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
      redirect_to '/' 
    end
  end

  def exercise_params
    params.require(:exercise).permit(:name, :emphasis, :description, :exerciseType, muscle_group_ids: [])
  end

  def index
    @exercises = Exercise.all
  end
end
