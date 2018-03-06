class GameSerializer < ActiveModel::Serializer
  attributes :id, :hope, :wisdom
  has_many :sentences
  belongs_to :user
end
