class Reservation < ActiveRecord::Base
=begin
  has_many :segments
  has_many :shuttles, :through => :segments
=end
  belongs_to :shuttle
  belongs_to :location
end
