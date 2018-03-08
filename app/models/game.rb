class Game < ApplicationRecord
  has_many :sentences, :dependent => :destroy
  has_many :words, through: :sentences
  belongs_to :user
end
