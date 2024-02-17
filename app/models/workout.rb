class Workout < ApplicationRecord
  has_and_belongs_to_many :exercises
  has_many :exercise_sets
  belongs_to :user
  
  accepts_nested_attributes_for :exercise_sets

  validates :title, presence: true
  validates :exercises, presence: true
end
