class StepSerializer < ActiveModel::Serializer
  attributes :id, :redact, :sentence
  has_one :sentence
end
