class Exercise < ApplicationRecord
  enum :muscleGroup, [:triceps, :delts, :biceps, :lats, :upperBack, :chest, :quadriceps, :forearms, :hamstrings, :calves, :core]
end

