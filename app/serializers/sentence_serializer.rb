class SentenceSerializer < ActiveModel::Serializer
  attributes :id, :active, :words
  has_many :words
  belongs_to :user
  belongs_to :game
end
