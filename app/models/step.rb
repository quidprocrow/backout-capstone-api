class Step < ApplicationRecord
  belongs_to :word
  has_one :sentence
end
