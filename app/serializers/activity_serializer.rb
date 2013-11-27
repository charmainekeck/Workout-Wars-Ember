class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :exericise_id, :user_id, :reps, :weight, :duration, :calories, :distance
end