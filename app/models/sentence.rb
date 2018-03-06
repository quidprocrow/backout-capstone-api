class Sentence < ApplicationRecord
  has_many :words, :dependent => :destroy
  belongs_to :game
end
