class TripSegments < ActiveRecord::Base
  belongs_to :shuttles
  belongs_to :reservations
end
