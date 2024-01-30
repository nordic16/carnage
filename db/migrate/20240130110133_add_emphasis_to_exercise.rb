class AddEmphasisToExercise < ActiveRecord::Migration[7.1]
  def change
    add_column :exercises, :emphasis, :string
  end
end
