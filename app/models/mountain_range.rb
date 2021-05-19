class MountainRange < ApplicationRecord
    has_many :mountains
    validates_presence_of :name, :length_km, :western_hemisphere
end