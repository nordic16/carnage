class AddMuscleGroupToExercise < ActiveRecord::Migration[7.1]
  def change
    add_column :exercises, :muscleGroup, :integer
  end
end
