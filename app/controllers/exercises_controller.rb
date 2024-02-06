class ExercisesController < ApplicationController
  before_action :authenticate_user!

  def new() 
    @exercise = Exercise.new
  end

  def create() 
    if @exercise.save(exercise_params)
      redirect_to '/' 
    end
  end

  def exercise_params() 
    params.require(:exercise).permit(:name, :emphasis, :description, :exerciseType)
  end
end
