class AddRepsToExerciseSet < ActiveRecord::Migration[7.1]
  def change
    add_column :exercise_sets, :reps, :integer
  end
end
