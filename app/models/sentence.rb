class Sentence < ApplicationRecord
  has_many :words, :dependent => :destroy
  belongs_to :game
  belongs_to :user
end
