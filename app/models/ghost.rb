class Ghost < ApplicationRecord
    has_many :hauntings
    has_many :haunted_houses, through: :hauntings

    # validates :age_at_death, numericality: { in: 0..110 }
    validates :name, presence: true
    validates :age_at_death, numericality: { 
        less_than_or_equal_to: 110, 
        greater_than_or_equal_to: 0 
    }
end
