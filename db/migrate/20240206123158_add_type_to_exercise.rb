class AddTypeToExercise < ActiveRecord::Migration[7.1]
  def change
    add_column :exercises, :exerciseType, :string
  end
end
