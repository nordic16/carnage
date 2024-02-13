class Workout < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :exercises
  has_many :exercise_sets, through: :exercises

  validates :title, presence: true
  validates :exercises, presence: true
end
