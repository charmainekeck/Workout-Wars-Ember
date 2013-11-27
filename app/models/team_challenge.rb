class TeamChallenge < ActiveRecord::Base
  has_many :c_exercises, as: :exerciseable
  has_many :exercises, through: :c_exercises
end
