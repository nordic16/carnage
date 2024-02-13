class AddNumberOfSetsToExercise < ActiveRecord::Migration[7.1]
  def change
    add_column :exercises, :number_of_sets, :integer
  end
end
