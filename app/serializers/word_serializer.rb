class WordSerializer < ActiveModel::Serializer
  attributes :id, :text, :clickable, :redacted
  has_one :step
end
