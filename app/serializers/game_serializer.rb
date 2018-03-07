class GameSerializer < ActiveModel::Serializer
  attributes :id, :hope, :wisdom, :mnemonic
  has_many :sentences
  belongs_to :user
end
