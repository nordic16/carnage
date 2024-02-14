class Workout < ApplicationRecord
  has_and_belongs_to_many :exercises
  belongs_to :user

  validates :title, presence: true
  validates :exercises, presence: true
end
