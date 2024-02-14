class CreateJoinTableWorkoutPerformedExercise < ActiveRecord::Migration[7.1]
  def change
    drop_join_table :workouts, :performed_exercises do |t|
      # t.index [:workout_id, :performed_exercise_id]
      # t.index [:performed_exercise_id, :workout_id]
    end
  end
end
