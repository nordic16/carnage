class RemoveSelectedFromExercise < ActiveRecord::Migration[7.1]
  def change
    remove_column :exercises, :selected, :boolean
  end
end
