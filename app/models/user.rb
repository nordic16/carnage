class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :username, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :api

  has_many :workouts, dependent: :destroy
  has_many :exercises, dependent: :destroy
  has_many :routines, dependent: :destroy
end
