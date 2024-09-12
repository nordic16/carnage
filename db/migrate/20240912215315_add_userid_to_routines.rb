class AddUseridToRoutines < ActiveRecord::Migration[7.1]
  def change
    add_column :routines, :user_id, :integer
  end
end
