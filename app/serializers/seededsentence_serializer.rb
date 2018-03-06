class SeededsentenceSerializer < ActiveModel::Serializer
  attributes :id, :active
  has_many :seededwords
end
