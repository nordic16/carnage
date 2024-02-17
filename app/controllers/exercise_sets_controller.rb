class ExerciseSetsController < ApplicationController
    def destroy
        @set = ExerciseSet.find(params[:id])

        @set.destroy
    end


    def update
        @set = ExerciseSet.find(params[:id])

        if @set.update(exercise_set_params)
            puts "yo"


    def exercise_sets_params()
        params.require(:exercise_set).permit(:intensity, :weight, :reps)
end
