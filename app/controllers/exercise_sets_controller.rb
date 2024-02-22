class ExerciseSetsController < ApplicationController
  def destroy
    @set = ExerciseSet.find(params[:exercise_id])
    @set.destroy
    
    redirect_back(fallback_location: '/')
  end

  def edit
    @index = params[:index]
    @set = ExerciseSet.find(params[:set_id])
  end

  def update
    @set = ExerciseSet.find(params[:set_id])

    respond_to do |format|
      if @set.update(exercise_sets_params)
        format.turbo_stream { render partial: "exercise_sets/set", locals: {set: @set} }
      end
    end

  end
  
  def create
    @set = ExerciseSet.new(workout_id: params[:workout_id], exercise_id: params[:exercise_id], 
      intensity: 1, weight: 0, reps: 0)
    
    if @set.save
      redirect_back(fallback_location: '/')
    end
  end

  def exercise_sets_params
    params.require(:exercise_set).permit(:intensity, :weight, :reps)
  end

  def test
    puts "yo"
  end 
  
end
