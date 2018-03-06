class SeededstepSerializer < ActiveModel::Serializer
  attributes :id, :redact, :sentenceindex, :hopemodifier, :wisdommodifier
  belongs_to :seededword
end
