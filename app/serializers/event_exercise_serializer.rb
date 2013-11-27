class EventExerciseSerializer < ActiveModel::Serializer
  attributes :id, :exercise_id, :exerciseable_id, :exerciseable_type

  embed :ids
end