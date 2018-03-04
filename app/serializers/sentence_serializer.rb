class SentenceSerializer < ActiveModel::Serializer
  attributes :id, :active, :words
  has_many :words
end
