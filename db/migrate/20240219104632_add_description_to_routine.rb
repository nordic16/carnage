class AddDescriptionToRoutine < ActiveRecord::Migration[7.1]
  def change
    add_column :routines, :description, :string
  end
end
