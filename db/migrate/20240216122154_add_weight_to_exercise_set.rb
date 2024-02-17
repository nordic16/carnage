class AddWeightToExerciseSet < ActiveRecord::Migration[7.1]
  def change
    add_column :exercise_sets, :weight, :integer
  end
end
