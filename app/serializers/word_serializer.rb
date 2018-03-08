class WordSerializer < ActiveModel::Serializer
  attributes :id, :text, :clickable, :redacted, :seedid, :seedstep, :sentence_id
  belongs_to :sentence
end
