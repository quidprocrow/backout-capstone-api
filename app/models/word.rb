class Word < ApplicationRecord
  belongs_to :sentence
  belongs_to :user
end
