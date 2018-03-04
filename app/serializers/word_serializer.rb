class WordSerializer < ActiveModel::Serializer
  attributes :id, :text, :clickable, :redacted, :step
  has_one :step
end
