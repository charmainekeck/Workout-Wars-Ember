class ActivitySerializer < ActiveModel::Serializer
  attributes :exericise_id, :user_id, :reps, :weight, :duration, :calories, :distance
end