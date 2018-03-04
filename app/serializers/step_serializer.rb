class StepSerializer < ActiveModel::Serializer
  attributes :id, :redact, :sentence
  belongs_to :word
  has_one :sentence
end
