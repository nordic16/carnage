class AddDescriptionToWorkout < ActiveRecord::Migration[7.1]
  def change
    add_column :workouts, :description, :string
  end
end
