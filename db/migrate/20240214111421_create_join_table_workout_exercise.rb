class CreateJoinTableWorkoutExercise < ActiveRecord::Migration[7.1]
  def change
    create_join_table :workouts, :exercises do |t|
      # t.index [:workout_id, :exercise_id]
      # t.index [:exercise_id, :workout_id]
    end
  end
end
