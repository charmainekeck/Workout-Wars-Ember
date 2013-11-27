class Challenge < ActiveRecord::Base
  has_many :event_exercises, as: :exerciseable
  has_many :exercises, through: :event_exercises
end
