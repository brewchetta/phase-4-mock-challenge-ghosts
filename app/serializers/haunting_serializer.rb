class HauntingSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :ghost
  belongs_to :haunted_house
end
