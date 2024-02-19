class CreateJoinTableRoutineExercises < ActiveRecord::Migration[7.1]
  def change
    create_join_table :routines, :exercises do |t|
      # t.index [:routine_id, :exercise_id]
      # t.index [:exercise_id, :routine_id]
    end
  end
end
