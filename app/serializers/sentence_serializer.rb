class SentenceSerializer < ActiveModel::Serializer
  attributes :id, :active
  has_many :words
end
