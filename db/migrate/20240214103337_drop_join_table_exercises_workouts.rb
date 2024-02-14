class DropJoinTableExercisesWorkouts < ActiveRecord::Migration[7.1]
  def change
    drop_join_table :exercises, :workouts do |t|
      # t.index [:exercise_id, :workout_id]
      # t.index [:workout_id, :exercise_id]
    end
  end
end
