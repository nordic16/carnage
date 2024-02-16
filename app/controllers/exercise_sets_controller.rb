class ExerciseSetsController < ApplicationController
    def destroy
        @set = ExerciseSet.find(params[:id])

        @set.destroy
    end
end
