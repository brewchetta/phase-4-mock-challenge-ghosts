class HauntedHouse < ApplicationRecord
    has_many :hauntings
    has_many :ghosts, through: :hauntings
end
