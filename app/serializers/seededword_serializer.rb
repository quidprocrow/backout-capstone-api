class SeededwordSerializer < ActiveModel::Serializer
  attributes :id, :text, :clickable, :redacted
end
