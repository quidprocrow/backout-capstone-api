class Seededword < ApplicationRecord
  has_one :seededstep
  belongs_to :seededsentence
end
