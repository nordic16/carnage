class Routine < ApplicationRecord
  has_and_belongs_to_many :exercises
  has_many :exercise_sets, through: :exercises
  belongs_to :user

  accepts_nested_attributes_for :exercise_sets
end
