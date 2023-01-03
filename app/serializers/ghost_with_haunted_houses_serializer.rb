class GhostWithHauntedHousesSerializer < ActiveModel::Serializer
  attributes :name, :age_at_death

  has_many :haunted_houses, # serializer: HauntedHouseWithoutIdSerializer
end
