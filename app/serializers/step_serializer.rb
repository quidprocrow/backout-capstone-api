class StepSerializer < ActiveModel::Serializer
  attributes :id, :redact
  belongs_to :word
end
