class WordSerializer < ActiveModel::Serializer
  attributes :id, :text, :clickable, :redacted
end
