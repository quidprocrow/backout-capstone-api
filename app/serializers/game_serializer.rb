class GameSerializer < ActiveModel::Serializer
  attributes :id, :hope, :wisdom, :mnemonic, :words
  has_many :sentences
  has_many :words, through: :sentences
  belongs_to :user
end
