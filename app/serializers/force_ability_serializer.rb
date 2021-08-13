class ForceAbilitySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :force_users
end
