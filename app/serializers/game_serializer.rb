class GameSerializer < ActiveModel::Serializer
  attributes :id, :hope, :wisdom, :mnemonic, :sentences
  belongs_to :user
end
