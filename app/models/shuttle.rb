class Shuttle < ActiveRecord::Base
=begin
  has_many :segments
  has_many :rervations, :through => :segments
=end
  has_many :reservations
end
