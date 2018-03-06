class SeededwordSerializer < ActiveModel::Serializer
  attributes :id, :text, :clickable, :redacted, :seededstep
  belongs_to :seededsentence
  has_one :seededstep
end
