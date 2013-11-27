class CompetitionSerializer < ActiveModel::Serializer
  attributes :id, :name, :start_date, :end_date, :max_participants, :lower_level_restriction, :upper_level_restriction

  embed :ids
  
  has_many :event_exercises, as: :exerciseable
  has_many :exercises, through: :event_exercises
end
