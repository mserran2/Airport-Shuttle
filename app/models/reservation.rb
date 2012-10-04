class Reservation < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :shuttle
end
