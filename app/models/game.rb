class Game < ApplicationRecord
  has_many :sentences, :dependent => :destroy
end
