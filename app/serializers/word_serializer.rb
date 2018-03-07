class WordSerializer < ActiveModel::Serializer
  attributes :id, :text, :clickable, :redacted, :step, :seedid
  has_one :step
end
