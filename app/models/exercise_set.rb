class ExerciseSet < ApplicationRecord
  enum :type, [:failure, :dropset, :straight], default: :straight
  belongs_to :exercise
end
