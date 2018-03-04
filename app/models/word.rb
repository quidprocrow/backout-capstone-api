class Word < ApplicationRecord
  has_one :step
  belongs_to :sentence
end
