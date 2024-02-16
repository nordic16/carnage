class Workout < ApplicationRecord
  has_and_belongs_to_many :exercises
  belongs_to :user
  
  accepts_nested_attributes_for :exercises

  validates :title, presence: true
  validates :exercises, presence: true
end
