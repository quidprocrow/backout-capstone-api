class Game < ApplicationRecord
  has_many :sentences, :dependent => :destroy
  belongs_to :user
end
