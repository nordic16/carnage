class Exercise < ApplicationRecord
  TYPES = [
    WEIGHT_REPS = "Weight and reps",
    REPS = "Reps only",
    TIMED = "timed"
  ] 
 

  def to_s = name

  has_and_belongs_to_many :muscle_groups
  has_and_belongs_to_many :workouts
  has_many :exercise_sets

  validates :muscle_groups, presence: true
end
