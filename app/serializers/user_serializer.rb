class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :nickname, :email, :gender, :address, :phone, :weight, :height, :age, :admin, :provider, :uid, :level, :xp_level, :xp_multiplier
end