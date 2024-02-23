class ExerciseSet < ApplicationRecord
    belongs_to :exercise
    belongs_to :workout
    
    after_destroy_commit -> { broadcast_remove_to "exercises" }
    after_update_commit -> { broadcast_replace_to "exercises" }
    after_create_commit -> { broadcast_append_to "exercises" }

end