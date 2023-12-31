class Workout < ApplicationRecord
  validates :title, presence: true
  has_one :user
end
