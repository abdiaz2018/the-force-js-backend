class ForceUserSerializer < ActiveModel::Serializer
  attributes :id, :name, :team, :gender, :race, :force_ability
end
